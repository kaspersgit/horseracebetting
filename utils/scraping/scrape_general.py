from bs4 import BeautifulSoup
import re
import hashlib
import time
import pandas as pd

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options

from fake_useragent import UserAgent

### functions (here for now)
# Accept cookies
def AcceptCookies(driver):
    try:
        # accept cookies
        WebDriverWait(driver, 5).until(EC.element_to_be_clickable((By.ID, 'onetrust-accept-btn-handler'))).click()
        # Wait (not able to find a good element to wait for)
        time.sleep(5)
    except NoSuchElementException:
        print('No cookies to accept')

    return driver

# Set filters when first time on page
def SetFilters(driver, upcoming_scrape = False):
    # Customize to select more historic data points
    try:
        # Expand to select more datapoints
        WebDriverWait(driver, 5).until(
            EC.element_to_be_clickable((By.CSS_SELECTOR, "button[data-test-id='startlist-customize']"))).click()
        # Wait (not able to find a good element to wait for)
        time.sleep(5)

        check_boxes = [{'text': 'Tid', 'input_id': 'checkbox-kmTime', 'wanted_value': 'true'}
            , {'text': 'Skoinfo', 'input_id': 'checkbox-shoeInfo', 'wanted_value': 'true'}
            , {'text': 'Vagninfo', 'input_id': 'checkbox-cartInfo', 'wanted_value': 'true'}
            , {'text': 'P-Odds', 'input_id': 'checkbox-pOdds', 'wanted_value': 'true'}
            , {'text': 'Hemmabana', 'input_id': 'checkbox-homeTrack', 'wanted_value': 'true'}
            , {'text': 'Starter Livs', 'input_id': 'checkbox-lifeStats', 'wanted_value': 'true'}
            , {'text': 'Starter 2022', 'input_id': 'checkbox-currentYearStats', 'wanted_value': 'true'}
            , {'text': 'Starter 2021', 'input_id': 'checkbox-previousYearStats', 'wanted_value': 'true'}
            , {'text': 'Distans och spår', 'input_id': 'checkbox-postPositionAndDistance', 'wanted_value': 'true'}
            , {'text': 'Nationalitet', 'input_id': 'checkbox-nationalities', 'wanted_value': 'true'}
            , {'text': 'Hästens kön & ålder', 'input_id': 'checkbox-ageAndSex', 'wanted_value': 'true'}
            , {'text': 'Utöka alla startlistor samtidigt', 'input_id': 'enable-expand-all-startlists',
               'wanted_value': 'false'}
            , {'text': 'Tipskommentar (Dagens Spel)', 'input_id': 'enable-compact-startlist-rows',
               'wanted_value': 'false'}
            , {'text': 'Statistikkommentar (TR Media)', 'input_id': 'enable-compact-startlist-rows',
               'wanted_value': 'false'}
            , {'text': 'Loppkommentarer i formrader', 'input_id': 'showRaceComments', 'wanted_value': 'false'}
            , {'text': 'Kompaktare formrader', 'input_id': 'enable-compact-startlist-rows', 'wanted_value': 'false'}
                       ]

        if upcoming_scrape:
            # Remove Tid as it is only available after race
            check_boxes = check_boxes[1::]

        for cb in check_boxes:
            print(f'Checking for {cb}')
            # check if checkbox is checked
            checkbox = driver.find_element(By.CSS_SELECTOR, f"input[data-test-id='{cb['input_id']}']")
            checkbox_status = checkbox.get_attribute('data-test-checked')

            print(f'Checkbox value: {checkbox_status}')
            if checkbox_status != cb['wanted_value']:
                try:
                    WebDriverWait(driver, 5).until(
                        EC.element_to_be_clickable((By.XPATH, f"//span[contains(text(),'{cb['text']}')]"))).click()
                    print(f"{cb['text']} checkbox clicked")
                except NoSuchElementException:
                    print(f"No {cb['text']} button found")

    except NoSuchElementException:
        print('Failed to click')

    # Save and close customization menu
    try:
        # Save and close to go back to data
        WebDriverWait(driver, 5).until(
            EC.element_to_be_clickable((By.CSS_SELECTOR, "button[data-test-id='save-startlist-options']"))).click()

    except NoSuchElementException:
        print('Failed to click save button')

    return driver


# convert the html atg start table to a pandas df
def AtgStartTable2Df(table, url_endpoint, upcoming_race = False):
    # Create empty dataframe
    rider_result_df = pd.DataFrame()

    table_rows = table.find_all('tr')
    for tr in table_rows[1::]:
        new_row = {}
        td = tr.find_all('td')
        for b in td:
            if b.has_attr('class'):
                # For specific columns
                # for the horse general info column
                if b['class'][0] == 'horse-col':
                    for horse_info in b.findAll('span'):
                        if not any(elem in horse_info['class'] for elem in ['horse-box', 'horse-col']):
                            if 'startNumber' in horse_info['class'][0]:
                                new_row['startNumber'] = horse_info.text
                            else:
                                new_row[horse_info['class'][0]] = horse_info.text

                # For the horse shoe column
                elif b['class'][0] == 'shoeInfo-col':
                    shoes = b.findAll('path')
                    shoes_list = []
                    for i, s in enumerate(shoes):
                        if s['d'].startswith('M25.6'):
                            shoe = 'horseshoe'
                            shoes_list.append(shoe)
                        if s['d'].startswith('M24.1'):
                            shoe = 'barefoot'
                            shoes_list[-1] = shoe

                    # concatonate string
                    content = ' - '.join(shoes_list)

                    # add content to a structured dict
                    new_row[b['class'][0]] = content

                # for the live stats column
                elif b['class'][0] == 'lifeStats-col':
                    # lifetime starts
                    content = b.find('span').text
                    new_row['lifetime-starts'] = content

                    # Lifetime podia, unclutter column value
                    all_text = b.text
                    podia_content = re.sub('^' + re.escape(content), '', all_text)

                    # column for each podium spot
                    for i, f in enumerate(podia_content.split('-')):
                        new_row[f'lifetime-podium-spot-{i+1}'] = f

                # Otherwise just take the text value
                else:
                    content = b.text.strip()

                    # add content to a structured dict
                    new_row[b['class'][0]] = content

        # Check that new rows is not empty
        if new_row:
            # Add row to dataframe
            new_row_df = pd.DataFrame(new_row, index=[0])
            rider_result_df = pd.concat([rider_result_df, new_row_df], ignore_index=True, sort=False)

    # Renaming start number column in case of upcoming race scare
    if upcoming_race:
        rider_result_df.columns = ['startNumber' if 'StartButtonWithTooltip' in x else x for x in rider_result_df.columns]

    # Adding race info
    rider_result_df['url_endpoint'] = url_endpoint
    rider_result_df['url-race-date'] = url_endpoint.split('/')[4]
    rider_result_df['url-race-track'] = url_endpoint.split('/')[6]
    rider_result_df['race-id'] = hashlib.md5(url_endpoint.encode('utf-8')).hexdigest()

    return rider_result_df

def ExtractRaceSpecificInfo(df, soup):
    # Adding few race specific info
    try:
        race_meta = soup.find('div', attrs={'class': 'race-meta'}).text
    except AttributeError:
        race_meta = 'NA'

    try:
        race_track = soup.find('div', attrs={'class': 'slanted race-track-name'}).text
    except AttributeError:
        race_track = 'NA'

    try:
        race_distance_start_method = soup.find('div', attrs={'class': 'slanted race-distance-start-method'}).text
    except AttributeError:
        race_distance_start_method = 'NA'

    df['race-meta'] = race_meta
    df['race-track'] = race_track
    df['race-distance'] = race_distance_start_method.split(' ')[0]
    df['start-method'] = ' '.join(race_distance_start_method.split(' ')[1::])

    return df
# load packages
import pandas as pd
import numpy as np
import requests
import time
from bs4 import BeautifulSoup
import re
import hashlib
import time

from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.chrome.options import Options

from utils.scraping.scrape_general import *
from utils.database.ETL_sqlite3 import *
from utils.modeling.predicting import *

def ScrapeAndPredictSaturdayV75(model_path='C:\\Users\\kaspe\\Projects\\ml_2_sql\\trained_models\\20221031_atg_test_50k_v6\\model\\ebm_classification.sav'):
    # scraping historic v75 race results
    base_url='https://www.atg.se'

    # create empty master df to be filled
    v75_race_starts_df = pd.DataFrame()

    # Adding fake user agent
    user_agent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0) Gecko/20100101 Firefox/38.0"

    # make sure browser is full screen and add fake user agent
    chrome_options = Options()
    chrome_options.add_argument(f'user-agent={user_agent}')
    chrome_options.add_argument("--window-size=1920,1080")
    driver = webdriver.Chrome('C:/Users/kaspe/Downloads/chromedriver_win32_107/chromedriver.exe', options=chrome_options)

    # create empty df to be filled
    all_upcoming_races_df = pd.DataFrame()

    # Load atg main website
    driver.get(base_url)
    driver = AcceptCookies(driver)

    # Navigate to V75
    html = driver.page_source
    soup = BeautifulSoup(html, "html.parser")
    all_a_tags = soup.findAll('a')

    # Check all a tags for links
    for a_tag in all_a_tags:
        href = a_tag.get('href')

        # Check if there is an href
        if href is None:
            continue

        # If v75 is named in the link use it
        if ('spel' in href) & ('V75' in href):
            v75_link = href
            break

    # Navigate to v75
    driver.get(base_url + v75_link)
    driver = SetFilters(driver , upcoming_scrape = True)

    # get html
    time.sleep(5)
    html = driver.page_source
    soup = BeautifulSoup(html, "html.parser")

    # Get all (7) races
    current_url = driver.current_url
    race_date = current_url.split('/')[4]
    race_track = current_url.split('/')[-1]
    all_races = soup.find_all("div", attrs={'name':re.compile(f"^{race_date}")})

    for r in all_races:
        table = r.find('table', attrs={'class': 'game-table'})

        # Extract table data
        start_table = AtgStartTable2Df(table, url_endpoint=current_url, upcoming_race=True)

        # Extract some more race specific info
        start_table = ExtractRaceSpecificInfo(start_table, r)

        # Filter out NaN starters
        start_table = start_table[~start_table['startNumber'].isnull()]

        # Cast and extend table
        df = formatColumnValues(start_table, upcoming_race=True)
        # Transform bet distibution column
        df['betDistribution_clean'] = df['betDistribution-col'].str.replace('%','').astype('float') / 100

        # Format column names
        df_format = reformatColumnNames(df)

        # Predict winner
        df_pred = modelPrediction(df_format, model_path, norm_group_col=None)

        # concat with master df
        all_upcoming_races_df = pd.concat([all_upcoming_races_df, df_pred], ignore_index=True, sort=False)

    # All windows related to driver instance will quit
    driver.quit()

    # Save predicted races
    all_upcoming_races_df.to_csv(f'data/predicted/v75/{race_track}_{race_date}.csv')

    # actionable data
    # filter columns
    act_df = all_upcoming_races_df[['startNumber', 'horse_name', 'betDistribution_clean',
           'vOdds_col_clean', 'prob', 'prob_odds',
           'prob_norm', 'prob_norm_odds']]

    # filter non starters
    act_df = act_df[act_df['vOdds_col_clean']>0]

    # add odds inequality share between betters and model (higher is better to bet on if model is correct)
    act_df['odds_inequality'] = act_df['vOdds_col_clean'] / act_df['prob_odds']
    act_df['bet_probs_inequality'] = act_df['prob'] / act_df['betDistribution_clean']

    return act_df
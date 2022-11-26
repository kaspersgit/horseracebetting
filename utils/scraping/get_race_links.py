
# load packages
import pandas as pd
import numpy as np
import requests
import time
from bs4 import BeautifulSoup



from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Save list of links to all v75 races
link_list = []

# scraping historic v75 race results
base_url='https://www.atg.se'
overview_endpoint='/videoarkiv/trav?gameTypes=V75&page='

driver = webdriver.Chrome('C:/Users/kaspe/Downloads/chromedriver_win32/chromedriver.exe')


for p in range(100):
    print(f'Page {p+1}')
    driver.get(base_url+overview_endpoint+str(p+1))

    try:
        # accept cookies
        WebDriverWait(driver, 5).until(EC.element_to_be_clickable((By.ID, 'onetrust-accept-btn-handler'))).click()
    except:
        print('No cookies to accept')

    # Wait (not able to find a good element to wait for)
    time.sleep(5)

    html = driver.page_source
    soup = BeautifulSoup(html, "html.parser")
    table = soup.find("table", {"class": "table table--striped table--no-row-border"})

    for link in table.findAll("td", {"class": "date-col"}):
        print(link.find('a').get('href'))
        link_list.append(link.find('a').get('href'))

# open file in write mode
with open(r'../../data/url_links/race_links.txt', 'w') as fp:
    for item in link_list:
        # write each item on a new line
        fp.write("%s\n" % item)
    print('Done')

print(driver.current_url)
driver.close()

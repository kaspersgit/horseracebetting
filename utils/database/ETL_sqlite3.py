import sqlite3
from sqlite3 import Error
import pandas as pd
import numpy as np

def run_query(conn, query):
    """
    Query all rows in the tasks table
    :param conn: the Connection object
    :param query: any query statement
    :return: pandas dataframe
    """
    cur = conn.cursor()
    cur.execute(query)

    # get column names
    names = list(map(lambda x: x[0], cur.description))

    df = pd.DataFrame(cur.fetchall(), columns=names)
    return df

def formatColumnValues(df, upcoming_race=False):
    # Simply convert to int
    int_cols = ['startNumber', 'horse-age']
    for c in int_cols:
        df[c] = df[c].astype(int)

    # odds to float
    # TODO podds can be ranges(?) (e.g. 7,63 - 16,71) -- taking the average now
    odds_cols = ['vOdds-col', 'pOdds-col']
    for c in odds_cols:
        df[c] = np.where(df[c] == 'EJ', -1, df[c])

        if df[c].dtype == 'object':
            odds_split = df[c].str.split('-', expand=True)
            first_odd = odds_split[0]
            first_odd = first_odd.str.replace(',', '.', regex=True).astype("float")

            # as default to make mean equal to first_odd anyway
            last_odd = first_odd
            if len(odds_split.columns) == 2:
                second_odd = df[c].str.split('-', expand=True)[1]
                second_odd = second_odd.str.replace(',', '.', regex=True).astype("float")
                last_odd = np.where(second_odd.isnull(), first_odd, second_odd)
            # Take mean of first and last odd of Range
            mean_odd = (first_odd + last_odd)/2

            df[f'{c}_clean'] = mean_odd

        else:
            # to have the 'clean' column in any case
            df[f'{c}_clean'] = df[c]

    if not upcoming_race:
        # extract lettres and numbers from km tid
        time_col = 'kmTime-col'
        df['kmTime-char'] = df[time_col].str.replace('[^a-zA-Z]+', '', regex=True)

        df['kmTime-time'] = df[time_col].str.replace('[^0-9\,\.]+', '', regex=True)

        df['kmTime-min'] = df['kmTime-time'].str.split('\.', expand=True)[0]
        df['kmTime-seconds'] = df['kmTime-time'].str.split('\.', expand=True)[1].str.split(',', expand=True)[0]
        df['kmTime-tenths'] = df['kmTime-time'].str.split('\.', expand=True)[1].str.split(',', expand=True)[1]

        # impute nan with -1
        time_cols = ['kmTime-min','kmTime-seconds','kmTime-tenths']
        for tc in time_cols:
            df[tc] = df[tc].fillna(-1)
            df[tc] = np.where(df[tc] == '', -1, df[tc])
            df[tc] = df[tc].astype('float')

        df['kmTime-timeInMiliSeconds'] = 1000 * (df['kmTime-min'] * 60 + df['kmTime-seconds']
                                                 + df['kmTime-tenths'] * 0.1)

    # decide if racing on home track
    df['RaceOnHometrack'] = np.where(df['homeTrack-col'].str.lower()==df['race-track'].str.lower(), True, False)

    if not upcoming_race:
        # Set winner
        df['winner'] = np.where(df['place-col'] == '1', 1, 0)

        # Set top3
        df['top3'] = np.where(df['place-col'].isin(['1','2','3']), 1, 0)

    df['lifetime-starts'] = df['lifetime-starts'].astype('float')

    for pc in ['lifetime-podium-spot-1', 'lifetime-podium-spot-2','lifetime-podium-spot-3']:
        df[pc] = df[pc].astype('float')
        df[f'{pc}_share'] = df[pc]/df['lifetime-starts']
        df[f'{pc}_share'] = df[f'{pc}_share'].fillna(0)

    # impute any other missing value
    null_cols = df.columns[df.isnull().sum() > 0]
    for nc in null_cols:
        if df[nc].dtype in ['object', 'category']:
            df[nc] = df[nc].fillna('Unknown')

        if df[nc].dtype in ['float', 'int']:
            df[nc] = df[nc].fillna(-1)

    # impute any other missing value
    for ec in df.columns:
        if df[ec].dtype in ['object', 'category']:
            df[ec] = np.where(df[ec].isin(['','NA']), 'Unknown', df[ec])

        if df[ec].dtype in ['float', 'int']:
            df[ec] = np.where(df[ec] == '', -1, df[ec])

    return df

def reformatColumnNames(df):
    # dashes to underscore
    col_names = df.columns
    col_names = col_names.str.replace('-','_')
    df.columns = col_names
    return df

def getRaceInformation(df):
    df_ = df.copy()
    df_['started_race'] = np.where((df_['place_col'].str.isnumeric()) & (df_['place_col'] != '0'), 1, 0)
    df_race = df_.groupby(['url_endpoint', 'url_race_date', 'url_race_track', 'race_id', 'race_meta', 'race_track'
                              , 'race_distance', 'start_method']).agg(
                                                avg_horse_age = ('horse_age','mean'),
                                                mode_horse_sex = ('horse_sex', lambda x: x.value_counts().index[0]),
                                                avg_vOdds = ('vOdds_col_clean','mean'),
                                                avg_pOdds = ('pOdds_col_clean','mean'),
                                                avg_lifetime_starts = ('lifetime_starts', 'mean'),
                                                max_lifetime_starts = ('lifetime_starts', 'max'),
                                                avg_lifetime_podium_spot_1_share = ('lifetime_podium_spot_1_share', 'mean'),
                                                max_lifetime_podium_spot_1_share = ('lifetime_podium_spot_2_share', 'max'),
                                                avg_lifetime_podium_spot_2_share = ('lifetime_podium_spot_2_share', 'mean'),
                                                max_lifetime_podium_spot_2_share = ('lifetime_podium_spot_2_share', 'max'),
                                                avg_lifetime_podium_spot_3_share = ('lifetime_podium_spot_3_share', 'mean'),
                                                max_lifetime_podium_spot_3_share = ('lifetime_podium_spot_3_share', 'max'),
                                                mode_shoe_info = ('shoeInfo_col', lambda x: x.value_counts().index[0]),
                                                nr_starters = ('started_race', 'sum'),
                                                nr_home_track_racers = ('RaceOnHometrack', 'sum')
                                               ).reset_index(drop=False)

    return df_race

if __name__ == '__main__':
    df_raw = pd.read_csv('data/horses_all_57025_rows.csv')
    df_enr = formatColumnValues(df_raw)
    df_enr_clean = reformatColumnNames(df_enr)

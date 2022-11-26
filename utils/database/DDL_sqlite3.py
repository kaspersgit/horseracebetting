import sqlite3
from sqlite3 import Error
import pandas as pd


def create_connection(db_file):
    """ create a database connection to the SQLite database
        specified by db_file
    :param db_file: database file
    :return: Connection object or None
    """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
    except Error as e:
        print(e)

    return conn


def create_table(conn, create_table_sql):
    """ create a table from the create_table_sql statement
    :param conn: Connection object
    :param create_table_sql: a CREATE TABLE statement
    :return:
    """
    try:
        c = conn.cursor()
        c.execute(create_table_sql)
    except Error as e:
        print(e)

def main():
    database = r"data/db/horseracebet.db"

    create_scraped_raw_table = """ CREATE TABLE IF NOT EXISTS scraped_raw (
                                        place_col                 text,
                                        startNumber               text,
                                        horse_name                text,
                                        horse_sex                 text,
                                        horse_age                 text,
                                        driver_col                text,
                                        vOdds_col                 text,
                                        kmTime_col                text,
                                        shoeInfo_col              text,
                                        cartInfo_col              text,
                                        pOdds_col                 text,
                                        homeTrack_col             text,
                                        lifetime_starts           text,
                                        lifetime_podium_spot_1    text,
                                        lifetime_podium_spot_2    text,
                                        lifetime_podium_spot_3    text,
                                        currentYearStats_col      text,
                                        previousYearStats_col     text,
                                        url_endpoint              text,
                                        url_race_date             text,
                                        url_race_track            text,
                                        race_id                   text,
                                        race_meta                 text,
                                        race_track                text,
                                        race_distance             text,
                                        start_method              text,
                                        foreign_owned             text,
                                        horse_nationality         text
                                    ); """

    create_races_v75_table = """ CREATE TABLE IF NOT EXISTS races_v75 (
                                        race_id                              text PRIMARY KEY,
                                        url_endpoint                         text,
                                        url_race_date                        text,
                                        url_race_track                       text,
                                        race_meta                            text,
                                        race_track                           text,
                                        race_distance                        text,
                                        start_method                         text,
                                        avg_horse_age                        real,
                                        mode_horse_sex                       text,
                                        avg_vOdds                            real,
                                        avg_pOdds                            real,
                                        avg_lifetime_starts                  real,
                                        max_lifetime_starts                  real,
                                        avg_lifetime_podium_spot_1_share     real,
                                        max_lifetime_podium_spot_1_share     real,
                                        avg_lifetime_podium_spot_2_share     real,
                                        max_lifetime_podium_spot_2_share     real,
                                        avg_lifetime_podium_spot_3_share     real,
                                        max_lifetime_podium_spot_3_share     real,
                                        mode_shoe_info                       text,
                                        nr_starters                           int,
                                        nr_home_track_racers                  int
                                    ); """

    create_horses_v75_table = """CREATE TABLE IF NOT EXISTS horses_v75 (
                                        place_col text PRIMARY KEY,
                                        startNumber integer NOT NULL,
                                        horse_name text,
                                        horse_sex text,
                                        horse_age integer,
                                        driver_col text,
                                        vOdds_col text,
                                        kmTime-col text,
                                        shoeInfo-col text,
                                        cartInfo-col text, 
                                        pOdds-col text, 
                                        homeTrack-col text, 
                                        lifetime-starts text,
                                        lifetime-podium-spot-1 text, 
                                        lifetime-podium-spot-2 text,
                                        lifetime-podium-spot-3 text, 
                                        currentYearStats-col text,
                                        previousYearStats-col text, 
                                        url_endpoint text, 
                                        url-race-date text,
                                        url-race-track text, 
                                        race-id text, 
                                        race-meta text, 
                                        race-track text, 
                                        race-distance text,
                                        start-method text, 
                                        foreign-owned text, 
                                        horse-nationality text, 
                                        kmTime-char text,
                                        kmTime-time text, 
                                        kmTime-min text, 
                                        kmTime-seconds text, 
                                        kmTime-tenths text

                                );"""

    # create a database connection
    conn = create_connection(database)

    # create tables
    if conn is not None:
        # create raw scraped table
        create_table(conn, create_scraped_raw_table)

        # create tasks table
        create_table(conn, create_races_v75_table)

        # create tasks table
        create_table(conn, create_horses_v75_table)
    else:
        print("Error! cannot create the database connection.")

    # Insert data into table
    if conn is not None:
        # insert data to raw scraped table - initial filling done
        df_raw.to_sql('scraped_raw', conn, if_exists='replace', index=False)

        # insert data to raw scraped table - initial filling done
        df_race.to_sql('races_v75', conn, if_exists='replace', index=False)

        # insert data to raw scraped table
        df_race.to_sql('horses_v75', conn, if_exists='replace', index=False)


if __name__ == '__main__':
    main()
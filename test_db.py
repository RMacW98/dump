import psycopg2
import pandas as pd

article_table = pd.DataFrame()

# Connect to db
con = psycopg2.connect(
    host = 'fyp-vm',
    database = 'postgres',
    user = 'postgres',
    password = 'postgres'
)

cur = con.cursor()

cur.execute('SELECT * FROM article_fact')

rows = cur.fetchall()

article_table = pd.DataFrame(data=rows, columns=['dateid', 'timeid', 'clean_title', 'url', 'compound'])

# Close the connection
con.close()

print(article_table.head())
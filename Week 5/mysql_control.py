from asyncio.windows_events import NULL
import mysql.connector
from mysql.connector import errorcode

from config import host, login, password


def connect(database):
    try:
        cnx = mysql.connector.connect(user=login,password=password,host=host,database=database)
        return cnx
    except mysql.connector.Error as err:
        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Something is wrong with your user name or password")
        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Database not found")
        else:
            print(err)
            
def commit_and_close(cnx,cursor = None):
    cnx.commit()
    if cursor:
        cursor.close()
    cnx.close()

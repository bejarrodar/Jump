# sqlite3 is a part of the Python standard Library, so no imports are necessary
import sqlite3

# The .connect method will create a connection to the database.  
# This will also create the database file at the given location
conn = sqlite3.connect("./example.db")

# The cursor object will allow us to execute all queries to the database
cursor = conn.cursor()

# The .execute method will read the string and pass the command to the database
# SQLite does not require types to be declared in columns
cursor.execute("CREATE TABLE pets(name, species, age)")

# The cursor will also return a tuple containing the results of a query
# This query will return the names of all tables in the database
result = cursor.execute("SELECT name FROM sqlite_master")
# .fetchone will return the first row of results
print(result.fetchone())

# An insert statement will create a transation that must be committed off of the connection object
cursor.execute("""
    INSERT INTO pets VALUES
        ('Fido', 'Dog', 7),
        ('Whiskers', 'Cat', 3)
""")
conn.commit()

# The .fetchmamy method will return all results of the query as a list of tuples
result = cursor.execute("SELECT * FROM pets")
print(result.fetchmany())

# Multiple records can be inserted with the .executemany command
inserts = [
    ('Goldie', 'Goldfish', 1),
    ('Polly', 'Parrot', 22),
    ('Skyscorch, The Dread Flame', 'Bearded Dragon', 2)
]
# The .executemany method uses the ? syntax a a placeholder for the data from an iterable to be inserted
# NOTE: A Sting is a Iterable!  If you are inserting only one string, be sure wrap it in a collection (ex. list, tuple)!
cursor.executemany("INSERT INTO pets VALUES(?, ?, ?)", inserts)

result = cursor.execute("SELECT * FROM pets")
print(result.fetchmany())
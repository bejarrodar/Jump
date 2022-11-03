from pprint import pprint

import mysql_control

query1 = """
select 
	customer_id, 
    count(rental_id) 
	from rental 
    group by customer_id 
    order by count(rental_id) desc
    limit 5
"""

query2 = """
select district, count(address_id) 
	from address
    group by district
"""

query3 = """
select
	title,
    rental_rate,
    replacement_cost
from film
where
	rental_rate < 1.0 or
    replacement_cost < 15
"""

query4 = """
select 
	customer_id,
    sum(amount) as 'total amount spent'
from payment
group by customer_id
having sum(amount) > 150.0
"""

query5 = r"""
select 
	customer_id, 
    first_name
from customer
where first_name like '__%o'
"""

connection = mysql_control.connect('sakila')

cursor = connection.cursor()

cursor.execute(query1)

pprint(cursor.fetchall())

cursor.execute(query2)

pprint(cursor.fetchall())

cursor.execute(query3)

pprint(cursor.fetchall())

cursor.execute(query4)

pprint(cursor.fetchall())

cursor.execute(query5)

pprint(cursor.fetchall())

mysql_control.commit_and_close(connection,cursor)

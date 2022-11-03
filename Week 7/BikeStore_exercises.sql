/*
Welcome to the bikeshops database!
Feel free to look around the database and get familiar, but I have some tasks for you.
The situation is our automatic system is down so please manually find the answers to these people's questions
within a single query.
*/
use bikestores;
select * from production_brands;
select * from production_categories;
select * from production_products;
select * from production_stocks;
select * from sales_customers;
select * from sales_order_items;
select * from sales_orders;
select * from sales_staffs;
select * from sales_stores;
####################################### QUESTION 1 ###########################################
/*
Customer 1:
I'm trying to decide which brand of bike I'd like to purchase most, and I heard expensive means better. So can you show me
the 3 most expensive brands of bicycles. Also how much do these bicycles cost on average?

Task: Show the name and average price (from the production_brands table) of the top 3 most expensive brands 
(from the production_brands table)
*/
#Answer Here#
select brand_name, avg(list_price) 
	from production_products 
    join production_brands on production_products.brand_id = production_brands.brand_id 
    group by brand_name
    order by avg(list_price) desc
    limit 3;

####################################### QUESTION 2 ###########################################
/*
Customer 2:
 All bike stores are partnering to find the employee with the all-time most sales. 
 This person will be declared employee of the month.
 Please find their full name and total sales (discounts included)
 
 Task: Find employees' full names (from the sales_staffs table) and their total sales (from the sales_orders table
 and sales_order_items table)
 */
 #Answer Here#
select concat(first_name,' ',last_name) as 'full_name',
	sum((list_price * quantity) - (discount*(list_price * quantity))) as 'total_sales'
from
	sales_staffs join sales_orders
on
	sales_staffs.staff_id = sales_orders.staff_id
join
	sales_order_items 
on
	sales_orders.order_id = sales_order_items.order_id
group by sales_orders.staff_id
order by total_sales desc
limit 1;

 ####################################### QUESTION 3 ###########################################
/*
Customer 3:
I need a cool bike. Can you show me the most sold bike?

Task: Find the name of the bicycle (from production_products) ordered by the quantity sold (from sales_order_items)
*/
#Answer Here#
select product_name, sum(quantity) as 'sold'
from production_products
join sales_order_items
on production_products.product_id = sales_order_items.product_id
group by sales_order_items.product_id
order by sold desc
limit 2;

####################################### QUESTION 4 ###########################################
/*
Customer 4:
I'm looking for a Mountain Bike and I want to know which bikes are relatively cheap. 
Any Mountain Bike less than the average Mountain Bike will suffice.

Task: List the names, brand_names, and list_price of all Mountain Bikes that cost less than the 
average Mountain Bike
*/
#Answer Here#
select product_name, brand_name, list_price
from production_products
join production_brands
on production_products.brand_id = production_brands.brand_id
where list_price < 
	(select avg(list_price) from production_products
		where category_id = 
			(select category_id from production_categories 
				where category_name = 'Mountain Bikes'))
and category_id = 
	(select category_id from production_categories 
		where category_name = 'Mountain Bikes') 
order by list_price desc;

# verify that answer
select avg(list_price) from production_products;
select avg(list_price) from production_products
where category_id = 
	(select category_id from production_categories 
		where category_name = 'Mountain Bikes');
####################################### QUESTION 5 ###########################################
/*
Customer 5: 
We need to reorganize stock between states. We will start by looking at Children Bicycles.
Which state purchased the most Children Bicycles?

Task: Find the customer_name, state and total purchases from the state who purchased the 
greatest quantity of Children Bicycles
*/
#Answer Here#
select 
	concat(first_name, ' ', last_name) as 'full_name',
    state,
    sum(quantity) as 'total_purchaces'
from sales_customers join sales_orders
on sales_customers.customer_id = sales_orders.customer_id
join sales_order_items
on sales_orders.order_id = sales_order_items.order_id
join production_products
on sales_order_items.product_id = production_products.product_id
where category_id = 
(select category_id from production_categories where category_name = 'Children Bicycles')
group by sales_orders.customer_id
order by total_purchaces desc
limit 1;

####################################### QUESTION 6 ###########################################
/*
Customer 6:
I want an expensive bike. Which store has the greatest stock of the most expensive bike?

Task: List the store_name, product_name, and list_price
*/
#Answer Here#
select store_name, product_name, list_price, quantity
from production_products
join production_stocks
on production_products.product_id = production_stocks.product_id
join sales_stores
on production_stocks.store_id = sales_stores.store_id
where production_products.list_price = 
(select max(list_price) from production_products)
order by production_stocks.quantity desc
limit 1;

####################################### QUESTION 7 ###########################################
/*
Customer 7: 
Baldwin Bikes is offering coupons to all customers who have spent more money than the largest 
order to date in our system. Get the names, emails, and total purchases of whoever qualifies.
*/
#Answer Here#
select concat(first_name,' ',last_name) as 'full_name', email,
	sum((list_price * quantity) * (1- discount)) as 'total_sales'
from
	sales_customers join sales_orders
on
	sales_customers.customer_id = sales_orders.customer_id
join
	sales_order_items 
on
	sales_orders.order_id = sales_order_items.order_id
where store_id = (select store_id from sales_stores where store_name = 'Baldwin Bikes')
group by sales_orders.customer_id
having total_sales > 
(select sum((list_price * quantity) *(1- discount)) as 'order_cost'
from sales_order_items
group by order_id
order by order_cost desc
limit 1
);

# testing
select sum((list_price * quantity) *(1- discount)) as 'order_cost'
from sales_order_items
group by order_id
order by order_cost desc
limit 1;

####################################### QUESTION 8 ###########################################
/*
Customer 8:
I need help searching for a bike in person, but I don't want to wait long. Can you tell me which bike store
has the most employees? 
*/
#Answer Here#
select store_name,count(staff_id) as 'num_staff'
from sales_stores
join sales_staffs
on sales_staffs.store_id = sales_stores.store_id
group by sales_staffs.store_id
order by num_staff desc
limit 1;

####################################### QUESTION 9 ###########################################
/*
Customer 9:
We are making plans to cut down on categories of bikes. Which category has the least sales?
*/
#Answer Here#
select category_name, sum(num_sold) as cat_sold from
(select category_name, sum(quantity) as num_sold
from sales_order_items
join production_products
on sales_order_items.product_id = production_products.product_id
join production_categories
on production_products.category_id = production_categories.category_id
group by sales_order_items.product_id, production_products.category_id) as data
group by category_name
order by cat_sold;

####################################### QUESTION 10 ###########################################
/*
Customer 10:
I live in NY and want a bike that's rare. Any bike that has less than the average stock will do. Can you show me the
bike name, store locations and stock for any available bikes
*/
#Answer Here#
select product_name, store_name, street, quantity
from sales_stores
join production_stocks
on production_stocks.store_id = sales_stores.store_id
join production_products
on production_products.product_id = production_stocks.product_id
where state = 'NY' and quantity < (select avg(quantity) from production_stocks)
order by quantity;

####################################### QUESTION 11 ###########################################
/*
 There's been a recall on all 'Trek X-Caliber 8 - 2017' bicycles. We need to alert any customer who purchased
this bike of the recall. Please get a list of customer names and emails who purchased the bike
*/
select concat(first_name, ' ', last_name) as full_name, email
from sales_order_items
join production_products
on sales_order_items.product_id = production_products.product_id
join sales_orders
on sales_order_items.order_id = sales_orders.order_id
join sales_customers
on sales_orders.customer_id = sales_customers.customer_id
where production_products.product_name = 'Trek X-Caliber 8 - 2017';
####################################### QUESTION 12 ###########################################
/*
Can you find me the name and address for stores that have at least 2 'Trek 820 - 2018' in stock 
*/
select store_name, street
from sales_stores
join production_stocks
on sales_stores.store_id = production_stocks.store_id
join production_products
on production_stocks.product_id = production_products.product_id
where product_name = 'Trek 820 - 2018' and quantity > 2;
####################################### QUESTION 13 ###########################################
/*
We are doing restock! Can you get me a list of all the bikes that are below the current average stock amount.
Also list which stores need the restock.
*/
select store_name, quantity
from sales_stores
join production_stocks
on sales_stores.store_id = production_stocks.store_id
where quantity < (select avg(quantity) from production_stocks);
####################################### QUESTION 14 ###########################################
/*
Are there any bikes that were sold for cheaper than the least expensive bike? List the sale price, 
list price, and bicycle name
*/
####################################### QUESTION 15 ###########################################
/*
We are promoting the manager who's employees' has made the greatest collective sales
*/


# Good Work! You're done for the day here!
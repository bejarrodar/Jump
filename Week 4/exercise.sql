use sakila;

select * from rental;
select 
	customer_id, 
    count(rental_id) 
	from rental 
    group by customer_id 
    order by count(rental_id) desc
    limit 5;
    
    select * from address;
        
select district, count(address_id) 
	from address
    group by district;
    
select * from film;

select
	title,
    rental_rate,
    replacement_cost
from film
where
	rental_rate < 1.0 or
    replacement_cost < 15;
    
    
select * from payment;
select 
	customer_id,
    sum(amount) as 'total amount spent'
from payment
group by customer_id
having sum(amount) > 150.0;

select * from customer;
select 
	customer_id, 
    first_name
from customer
where first_name like '__%o';

select 
	customer_id, 
    first_name
from customer
where first_name rlike '^[a-z][a-z][a-z]*o$';


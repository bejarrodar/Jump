use sakila;

select * from film;
select * from inventory;

select * from film where rating = 'G';
select film_id from film where rating = 'G';

select * from inventory
where film_id in (
	select film_id from film where rating = 'G'
);

select * from address;
select * from customer;
select * from payment;

select customer_id, sum(amount) as 'spent' from payment 
group by customer_id order by spent desc limit 1;

select * from customer where customer_id = 526;

select * from customer where customer_id = (
	select customer_id from payment 
	group by customer_id order by sum(amount) desc limit 1
);

-- display full name, address id
select concat(first_name,' ', last_name) as 'full name', address_id from customer where customer_id = (
	select customer_id from payment 
	group by customer_id order by sum(amount) desc limit 1
);

-- get the information about each actor who starred in film 110
select * from film;
select * from actor;
select * from film_actor;

select * from film where film_id = 110;
select * from film_actor where film_id = 110;

select * from actor where actor_id in (
	select actor_id from film_actor where film_id = 110
);

-- get the information about each actor who starred in the film CABIN FLASH
select film_id from film where title = 'CABIN FLASH';
select * from actor where actor_id in (
	select actor_id from film_actor where film_id = (
		select film_id from film where title = 'CABIN FLASH'
    )
);


-- Find all films that have a higher replacement cost than the average replacement cost
select * from film;
select * from film where replacement_cost > (
	select avg(replacement_cost) from film
);


select * from payment;
select * from customer;

select * from customer
join payment
on customer.customer_id = payment.customer_id;

select concat(first_name, ' ', last_name), title from film_actor
join film 
on film_actor.film_id = film.film_id
join actor
on film_actor.actor_id = actor.actor_id;

select * from address;
select * from store;

select * from address
right join store
on store.address_id = address.address_id;

select avg(replacement_cost) from film where rating = 'PG-13';
select * from film where replacement_cost > (
	select avg(replacement_cost) from film where rating = 'PG-13'
);
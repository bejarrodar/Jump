use sakila;

select * from film;
select * from category;
select * from film_category;

select title, rating, name as 'category' 
	from film
    join film_category
		on film.film_id = film_category.film_id
    join category
		on film_category.category_id = category.category_id
	where rating != 'PG';
    
select * from actor;
select * from film_actor;

select 
	concat(first_name, ' ', last_name) as 'full_name',
    count(film_actor.actor_id) as 'number_movies'
from actor
join film_actor
on actor.actor_id = film_actor.actor_id
group by film_actor.actor_id
Order by number_movies;
    
select * from inventory;

select 
	title,
    count(inventory.film_id) as 'number_stock'
from film
join inventory
on film.film_id = inventory.film_id
group by inventory.film_id
order by number_stock desc;

select * from film
where rating = 'PG-13' and replacement_cost > (
	select avg(replacement_cost) from film
);
	
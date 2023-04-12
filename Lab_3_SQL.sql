use sakila;

-- Drop column picture from staff.
select * from staff;

ALTER TABLE staff
DROP COLUMN picture;


--  A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.


select * from staff;



select *, concat(first_name, ' ', last_name) as fullname 
from customer
where first_name = 'TAMMY' ;




INSERT INTO staff (staff_id, first_name, last_name, 
address_id, store_id, active, email, username, password, last_update)
VALUES (3, 'Tammy', 'Sanders',5, 2, 1,
'tammy.sanders@sakilastaff.com', 'tams', 'pwd', NOW());

select * from staff;

-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';


select film_id, inventory_id from film
join inventory_id on film.film_id=inventory.film_id  where title='Academy Dinosaur';

select staff_id from staff where last_name='Hillyer' and store_id=1;

insert into rental(rental_date, inventory_id, customer_id, staff_id, last_update)
values
(current_date(), 1, 130, 1, current_date());


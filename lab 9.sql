--- Lab9

--- Create a table rentals_may to store the data from rental table with information for the month of May.
CREATE TABLE rental_may(
  `rental_id` int UNIQUE NOT NULL, -- AS PRIMARY KEY
  `rental_date` datetime DEFAULT NULL,
  `inventory_id` varchar(20) DEFAULT NULL, -- char() , varchar(255)
  `customer_id` int DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (rental_id))
--- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
INSERT INTO rental_may ()
SELECT *
FROM rental
where rental_date between '2005-05-01' and '2005-05-31';

--- Create a table rentals_june to store the data from rental table with information for the month of June.
CREATE TABLE rental_june(
  `rental_id` int UNIQUE NOT NULL, -- AS PRIMARY KEY
  `rental_date` datetime DEFAULT NULL,
  `inventory_id` varchar(20) DEFAULT NULL, -- char() , varchar(255)
  `customer_id` int DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  CONSTRAINT PRIMARY KEY (rental_id))

--- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
INSERT INTO rental_june ()
SELECT *
FROM rental
where rental_date between '2005-06-01' and '2005-06-30';
--- Check the number of rentals for each customer for May.
select customer_id, count(*) 
from rental_may
group by customer_id
order by count(*) desc

--- Check the number of rentals for each customer for June.
select customer_id, count(*) 
from rental_june
group by customer_id
order by count(*) desc

--- Write a function that checks if customer borrowed more or less films in the month of June as compared to May.
select count(rental_id)
from rental_may
select count(rental_id)
from rental_june
--- inner join 

select * from rental_may
inner join rental_june
on rental_june.rental_id = rental_may.rental_id 

select customer_id, count(*) 
inner join customer_id
on rental_may.customer_id = rental_june.customer_id
from rental_june
group by customer_id
order by count(*) desc
 
select count(rental_id) 
from rental_may
where customer_id = 130

select count(rental_id) 
from rental_june
where customer_id = 130
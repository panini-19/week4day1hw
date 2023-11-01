-- 1) How many actors are there with the last name 'Wahlberg?'
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg'
-- Reasoning: After inputting the set criteria, the query returned 2 results: Nick & Daryl Wahlberg.

-- 2) How many payments were made between $3.99 and $5.99?
SELECT payment_id, amount
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Reasoning: There is no data that fits the set criteria. At first I thought there might've been an error 
-- with my code, but upon expanding the max amount to 100, it did return data.

-- 3) What film does the store have the most of? (search in inventory)
SELECT COUNT(inventory_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(inventory_id)DESC; 
-- Reasoning: There are multiple films that fit the criteria, since multiple films have the count of 8
-- which is the highest amount.

-- 4) How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William'
-- Reasoning: After inputting the correct criteria, the query retured no results, which means there
-- are no customers with the last name 'William'. However, when checking again with the LIKE clause 
-- using 'LIKE 'W%' just to confirm, there were a few last names that were close to 'William'.

-- 5) What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;
-- Reasoning: Using COUNT(rental_id) and staff_id, I am able to count the amount of times each staff member
-- has sold a rental since a rental ID correlates with a sale. I get a result of staff_id 1 with 8040 rentals
-- sold. Using ORDER BY and DESC, I am then able to sort the query by COUNT(renta_id) to put the query in order.

-- 6) How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- Reasoning: Using DISTINCT, I am able to filter out any doubles of district names in the address section
--resulting in 378 different district names.

-- 7) What film has the most actors in it? (use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id)DESC;
-- Reasoning: I am looking for the film ID with the most actors in it so I would count the actor ID as 
-- well. I then would need to order the count of the actor ID by desscending order to show the film
-- with the most actors in it at the top, which was film ID 508 with 15 actors.

-- 8) From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es'
GROUP BY store_id
ORDER BY COUNT(last_name);
-- Reasoning: Using WHERE, LIKE as well as the wildcard, I am able to count the number of times 
-- a customer with 'es' in their last name appears by store ID. It nets me the result of 13 
-- customers with a last name ending in 'es'.

-- 9) How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(amount), amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount) > 250;
-- Reasoning: There are 3 amounts that meet the criteria set above. Having to count the amount and display 
-- the amount is important.

-- 10) Within the film table, how many rating categories are there? And what rating has the most movies total?
SELECT rating, COUNT(film_id)
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;
-- Reasoning: I counted the film_id and grouped it by rating to get PG-13 with 224 movies total. There are
-- only a total of 5 rating categories.
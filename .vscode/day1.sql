SELECT *
from actor;

SELECT last_name, first_name
FROM actor;

SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'J%';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%'

SELECT *
FROM payment;

SELECT amount 
FROM payment 
WHERE amount >10;

SELECT amount
FROM payment
WHERE amount >=10 AND amount <=15;

SELECT amount
FROM payment
ORDER BY amount DESC;

SELECT amount
FROM payment
WHERE amount <> 2.99;

SELECT SUM(amount)
FROM payment
WHERE amount >= 5.99;

SELECT COUNT(amount)
FROM payment
WHERE amount >= 5.99;

SELECT AVG(amount)
FROM payment
WHERE amount >= 5.99;

SELECT COUNT(DISTINCT amount)
FROM payment;

SELECT MIN(amount) AS min_amount_paid
FROM payment;

SELECT MAX(amount) AS max_amount_paid
FROM payment;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC

SELECT customer_id, SUM(amount)
FROM payment
WHERE amount > 10
GROUP BY customer_id
HAVING SUM(amount) > 100
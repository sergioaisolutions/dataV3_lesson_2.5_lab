USE sakila;

-- EXERCISE 1.

SELECT * FROM sakila.actor
WHERE first_name = 'Scarlett';

-- EXERCISE 2.

SELECT COUNT(*) FROM rental;
SELECT COUNT(*) FROM film;

-- EXERCISE 3.

SELECT MAX(length) AS 'max_duration' FROM film;
SELECT MIN(length) AS 'min_duration' FROM film;

-- EXERCISE 4

SELECT SEC_TO_TIME(AVG(length) * 60) AS 'avg_time' FROM film;

-- EXERCISE 5

SELECT DISTINCT last_name FROM actor;

-- EXERCISE 6

SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) FROM rental;

-- EXERCISE 7

SELECT rental_id, DATE_FORMAT(rental_date, '%M'), WEEKDAY(rental_date) FROM rental
LIMIT 20;

-- EXERCISE 8

SELECT rental_id, WEEKDAY(rental_date), 

CASE
    WHEN WEEKDAY(rental_date) > 05 THEN 'weekend'
    ELSE 'workday'
END AS date_type

FROM rental;

-- EXERCISE 9

SELECT title, release_year FROM film;

-- EXERCISE 10

SELECT title FROM film
WHERE title LIKE('%ARMAGEDDON%');

-- EXERCISE 11

SELECT title FROM film
WHERE title LIKE('%APOLLO');

-- EXERCISE 12

SELECT title, length FROM film
ORDER BY length DESC
LIMIT 10;

-- EXERCISE 13

SELECT COUNT(*) FROM film
WHERE special_features LIKE('%Behind the Scenes%');
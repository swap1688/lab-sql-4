# Lab | SQL Queries 4
### Instructions
USE sakila;
-- 1. Get film ratings.
SELECT distinct(rating)
FROM film;

-- 2. Get release years.
SELECT release_year
FROM film;

-- 3. Get all films with ARMAGEDDON in the title.
SELECT title
FROM film
WHERE title like "%ARMAGEDDON%";

-- 4. Get all films with APOLLO in the title
SELECT title
FROM film
WHERE title REGEXP "APOLLO";

-- 5. Get all films which title ends with APOLLO.
SELECT title
FROM film
WHERE title REGEXP "APOLLO$";

-- 6. Get all films with word DATE in the title.
SELECT title
FROM film
WHERE title REGEXP "DATE";

-- 7. Get 10 films with the longest title.
SELECT title, length(title) as title_length
FROM film
ORDER BY title_length desc
LIMIT 10;

-- 8. Get 10 the longest films.
SELECT title, length 
FROM film
ORDER BY length desc
LIMIT 10;

-- 9. How many films include **Behind the Scenes** content?
SELECT *
FROM film
WHERE special_features REGEXP "Behind the Scenes";

-- 10. List films ordered by release year and title in alphabetical order.
SELECT *
FROM FILM
ORDER BY release_year;
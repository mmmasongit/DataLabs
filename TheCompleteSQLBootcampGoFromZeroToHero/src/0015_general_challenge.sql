/*
Challenge

Questions:
1. How many payment transaction were greater than $5.00?

2. How many actors have a first name that starts with the letter P?

3. How many unique districts are our customers from?

4. Retrieve the list of names for those distinct districts from the previous
question

5. How many films have a rating of R and a replacement cost between $5 and $15?

6. How many films have the word Truman somewhere in the title?
 */
--
-- Question 1
-- How many payment transaction were greater than $5.00?
SELECT
  COUNT(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount > 5.00;

--
-- Question 2
-- How many actors have a first name that starts with the letter P?
SELECT
  COUNT(first_name)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.actor
WHERE
  first_name LIKE 'P%';

--
-- Question 3
-- How many unique districts are our customers from?
SELECT
  COUNT(DISTINCT (district))
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.address;

--
-- Question 4
-- Retrieve the list of names for those distinct districts from the previous
-- question
SELECT DISTINCT
  (district)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.address;

--
-- Question 5
-- How many films have a rating of R and a replacement cost between $5 and $15?
SELECT
  COUNT(*)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  rating = 'R'
  AND replacement_cost BETWEEN 5 AND 15;

--
-- Question 6
-- How many films have the word Truman somewhere in the title?
SELECT
  COUNT(title)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  title LIKE '%Truman%';
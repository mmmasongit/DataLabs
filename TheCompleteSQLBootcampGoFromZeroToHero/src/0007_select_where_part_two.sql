/*
Notes

Example of using the where clause.

Examples below
 */
--
-- Example 1
-- Example of selecting a customer by first name and filtering the results using
-- the WHERE clause.
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name = 'Jared';

--
-- Example 2
-- Example of selecting a customer by first name and filtering the results using
-- the WHERE clause with multiple conditions. 
-- We are asking the question how films are rated R, have a rental rate greater
-- than 4, and have a replacement cost greater than or equal to 19.99.
SELECT
  COUNT(title)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  rental_rate > 4
  AND replacement_cost >= 19.99
  AND rating = 'R';

--
-- Example 3
-- Example of counting the number of films that are rated R or PG-13.
SELECT
  COUNT(*)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  rating = 'R'
  OR rating = 'PG-13';

--
-- Example 4
-- Example of counting the number of films that are not rated R.
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  rating != 'R';
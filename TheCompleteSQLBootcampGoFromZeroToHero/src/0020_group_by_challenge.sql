/*
Challenge

Questions:
1. We have two staff members, with Staff IDs 1 and 2. We want to give a bonus to
the staff member that handled the most payments. (Most in terms of number of 
payments processed, not total dollar amount).
How many payments did each staff member handle and who gets the bonus?

2. Corporate HQ is conducting a study on the relationship between replacement
cost and a movie MPAA rating (e.g. G, PG, R, etc...).
What is the average replacement cost per MPAA rating?
- You may need to expand the AVG column to view correct results.

3. We are running a promotion to reward our top 5 customers with coupons.
What are the customer ids of the top 5 customers by total spend?
 */
--
-- Question 1
SELECT
  staff_id,
  COUNT(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  staff_id;

--
-- Question 2
SELECT
  rating,
  ROUND(AVG(replacement_cost), 2)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
GROUP BY
  rating;

--
-- Question 3
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
ORDER BY
  SUM(amount) DESC
LIMIT
  5;
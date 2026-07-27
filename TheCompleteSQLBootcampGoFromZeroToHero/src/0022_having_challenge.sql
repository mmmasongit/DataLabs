/*
Challenge

Questions:
1. We are launching a platinum service for our most loyal customers. We will
assign platinum status to customers that have had 40 or more transaction
payments. What customer_ids are eligible for platinum status?

2. What are the customer ids of customers who have spent more than $100 in
payment transactions with our staff_id member 2?
 */
--
-- Question 1
SELECT
  customer_id,
  COUNT(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
HAVING
  COUNT(amount) >= 40;

--
-- Question 2
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  staff_id = 2
GROUP BY
  customer_id
HAVING
  SUM(amount) > 100;
/*
Assessment Test 1

Questions:
1. Return the customer IDS of customers who have spent at least $110 with the
staff members who has an ID of 2.
Expected: 187 and 148

2. How many films begin with the letter J?
Expected: 20

3. What customer has the highest customer ID number who name starts with an E
and has an address ID lower than 500?
Expected: Eddie Tomlin
 */
--
-- Question 1
/*
Return the customer IDS of customers who have spent at least $110 with the
staff members who has an ID of 2.
 */
SELECT
  customer_id,
  staff_id,
  SUM(amount) AS total_amount
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  staff_id = 2
GROUP BY
  customer_id,
  staff_id
HAVING
  SUM(amount) > 110
ORDER BY
  total_amount DESC;

--
-- Question 2
/*
How many films begin with the letter J?
 */
SELECT
  COUNT(title)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  title LIKE 'J%';

--
-- Question 3
/*
What customer has the highest customer ID number who name starts with an E
and has an address ID lower than 500?
 */
SELECT
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name LIKE 'E%'
GROUP BY
  first_name,
  last_name
HAVING
  MIN(address_id) < 500
ORDER BY
  MAX(customer_id) DESC
LIMIT
  1;
/*
Challenge

Business Situation
1. We want to reward our first 10 paying customers. What are the customer ids
of the first 10 customers who created a payment?

2. A customer wants to quickly rent a video to watch over their short lunch
break. What are the titles of the 5 shortest (in length of runtime) movies?

3. If the previous customer can watch any movie that is 50 minutes or less in
run time, how many options does she have?
 */
--
-- Challenge 1
SELECT
  customer_id
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
ORDER BY
  payment_date ASC
LIMIT
  10;

--
-- Challenge 2
SELECT
  title
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
ORDER BY
  LENGTH ASC
LIMIT
  5;

--
-- Challenge 3
SELECT
  COUNT(title)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film
WHERE
  LENGTH <= 50;
/*
NOTES

Working through some GROUP BY examples.

Examples below
 */
--
-- Example 1
SELECT
  customer_id
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
ORDER BY
  customer_id;

--
-- Examples 2
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id;

--
-- Examples 3
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
ORDER BY
  SUM(amount) DESC;

--
-- Example 4
SELECT
  customer_id,
  COUNT(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
ORDER BY
  COUNT(amount) DESC;

--
-- Example 5
SELECT
  customer_id,
  ROUND(SUM(amount) / COUNT(amount), 2),
  ROUND(AVG(amount), 2)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
ORDER BY
  SUM(amount) / COUNT(amount) DESC,
  AVG(amount) DESC;

--
-- Example 6
SELECT
  customer_id,
  staff_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id,
  staff_id;

--
-- Example 7
SELECT
  customer_id,
  staff_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id,
  staff_id
ORDER BY
  customer_id;

--
-- Example 8
SELECT
  DATE (payment_date),
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  DATE (payment_date)
ORDER BY
  SUM(amount) DESC;
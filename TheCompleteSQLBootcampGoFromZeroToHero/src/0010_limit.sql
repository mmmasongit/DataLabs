/*
NOTES

The LIMIT command allows us to limit the number of rows returned for a query.

Useful for not wanting to return every single row in a table, but only view the
top few rows to get an idea of the table layout.

LIMIT also becomes useful in combination with ORDER BY.

Examples below
 */
--
-- Example 1
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
ORDER BY
  payment_date DESC
LIMIT
  5;

--
-- Example 2
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount != 0.00
ORDER BY
  payment_date DESC
LIMIT
  5;

--
-- Example 3
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount != 0.00
ORDER BY
  payment_date DESC,
  amount ASC
LIMIT
  5;
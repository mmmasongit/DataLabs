/*
NOTES

Before we learn about JOINs, we need to cover AS clause which allows us to
create an "alias" for a column or result.

```sql
SELECT column as new_name
FROM table;
```

```sql
SELECT SUM(column) as new_name
FROM table;
```

The AS operator gets executed at the very end of a query, meaning that we can
not use the ALIAS inside a WHERE operator.

Examples below
 */
--
-- Example 1
SELECT
  amount AS rental_price
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 2
SELECT
  SUM(amount) AS net_revenue
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 3
SELECT
  COUNT(amount) AS number_transaction
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 4
SELECT
  customer_id,
  SUM(amount) AS total_spent
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
GROUP BY
  customer_id
HAVING
  -- Can't put total_spent > 100
  SUM(amount) > 100;

--
-- Example 5
SELECT
  customer_id,
  amount AS total_spent
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  -- Can't put total_spent > 2
  amount > 2;
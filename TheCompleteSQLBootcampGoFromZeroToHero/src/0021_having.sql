/*
NOTES

The HAVING clause allows us to filter after an aggregation has already taken
place.

Let's take a look back at one of our previous examples.

```sql
SELECT company, SUM(sales)
FROM finance_table
WHERE company != 'Google'
GROUP BY company;
```

We've already seen we can filter before executing the GROUP BY, but what if we
want to filter based on SUM(sales)?

So it's okay to filter out company because we ain't calling aggregate function
on it. However, if it had aggregate function called on it, than we would need
to filter by HAVING.

We can not use WHERE to filter based off of aggregate results, because those
happen after a WHERE is executed.

```sql
SELECT company, SUM(sales)
FROM finance_table
WHERE company != 'Google'
GROUP BY company
HAVING SUM(sales) > 1000;
```

HAVING allows us to use the aggregate results as a filter along with a GROUP BY

Example below
 */
--
-- Example 1
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  customer_id NOT IN (184, 87, 477)
GROUP BY
  customer_id
HAVING
  SUM(amount) > 100;

--
-- Example 2
SELECT
  customer_id,
  SUM(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  customer_id NOT IN (184, 87, 477)
GROUP BY
  customer_id
HAVING
  SUM(amount) > 100
ORDER BY
  SUM(amount) DESC;

--
-- Example 3
SELECT
  store_id,
  COUNT(customer_id)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
GROUP BY
  store_id
HAVING
  COUNT(customer_id) > 300;
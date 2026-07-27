/*
NOTES

In certain cases you want to check for multiple possible value options, for
example, if a user's name shows up IN a list of known names.

We can use the IN operator to create a condition that checks to see if a value
in included in a list of multiple options.

The general syntax is:
- value IN (option_1, option_2, ..., option_n)

Example query
```sql
SELECT color from table
WHERE color IN ('red', 'blue')
```

Can use NOT operator as well
```sql
SELECT color from table
WHERE color NOT IN ('red', 'blue')
```

Examples below
 */
--
-- Example 1
SELECT
  COUNT(*)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount IN (0.99, 1.98, 1.99);

--
-- Example 2
SELECT
  COUNT(*)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount NOT IN (0.99, 1.98, 1.99);

--
-- Example 3
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name IN ('John', 'Jake', 'Julie');
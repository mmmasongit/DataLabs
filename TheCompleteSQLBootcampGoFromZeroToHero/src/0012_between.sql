/*
NOTES

The BETWEEN operator can be used to match a value against a range of values:
- value BETWEEN low AND high
- value >= low AND value <= high

You can also combine BETWEEN with the NOT logical operator:
- value NOT BETWEEN low and high
- value < low OR value > high

The BETWEEN operator can also be used with dates. Note that you need to format,
which is YYYY-MM-DD
- date BETWEEN '2007-01-01' AND '2007-02-01'

When using BETWEEN operator with dates that also include timestamp information,
pay careful attention to using BETWEEN versus <=, >= comparison operators, due
to the fact that a datetime starts at 0:00.

Later on we will study more specific methods for datetime information types.

Examples below
 */
--
-- Example 1
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount BETWEEN 8 AND 9;

--
-- Example 2
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  amount NOT BETWEEN 8 AND 9;

--
-- Example 3
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  payment_date BETWEEN '2007-02-01' AND '2007-02-15';

--
-- Example 4
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment
WHERE
  payment_date BETWEEN '2007-02-01' AND '2007-02-14';
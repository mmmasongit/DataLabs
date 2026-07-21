/*
NOTES

The COUNT function returns the number of input rows that match a specific
condition of a query.

We can apply COUNT on a specific column or just pass COUNT(*), we will soon see
this should return the same result.

Let's see a simple example
===================
= NAME   = Choice =
===================
= Zach   = Green  =
= David  = Green  =
= Claire = Yellow =
= David  = Red    =
===================

```sql
SELECT COUNT(name) 
FROM table;
```
Results:
=========
= Count =
=========
= 4     =
=========

This is simply returning the number of rows in the table.

In fact, it should be the same regardless of the column.

Each column has the same number of rows.

===================
= NAME   = Choice =
===================
= Zach   = Green  =
= David  = Green  =
= Claire = Yellow =
= David  = Red    =
===================

```sql
SELECT COUNT(name)
FROM table;
```

```sql
SELECT COUNT(choice)
FROM table;
```

```sql
SELECT COUNT(*)
FROM table;
```

All return the same thing, single the original table had 4 rows. However, we
should try to use on a column name instead of COUNT(*) to help remember what we
are trying to count.

Because of this COUNT by itself simply returns back a count of the number of
rows in a table.

COUNT is much more useful when combined with other commands, such as DISTINCT.

Imagine we wanted to know:
How many unique names are there in the table?
===================
= NAME   = Choice =
===================
= Zach   = Green  =
= David  = Green  =
= Claire = Yellow =
= David  = Red    =
===================

```sql
SELECT COUNT(DISTINCT(name))
FROM table;
```

=========
= Count =
=========
= 3     =
=========

Examples below
 */
--
-- Example 1
-- Count the number of rows in the payment table
SELECT
  COUNT(*)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 2
-- Better to count a specific column, such as amount, instead of COUNT(*)
-- because it is more clear what we are counting. Even though it will return 
-- the same result as COUNT(*)
SELECT
  COUNT(amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 3
-- What if we wanted to know how many unique amounts are in the payment table?
SELECT DISTINCT
  (amount)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;

--
-- Example 4
-- We can combine COUNT with DISTINCT to get the number of unique amounts in 
-- the payment table
SELECT
  COUNT(DISTINCT (amount))
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment;
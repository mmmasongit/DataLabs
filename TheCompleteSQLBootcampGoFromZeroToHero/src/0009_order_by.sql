/*
NOTES

You may have noticed PostgreSQL sometimes returns the same request query results
in a different order.

You can use ORDER BY to sort rows based on a column value, in either ascending
or descending order.

Basic syntax for ORDER BY with ascending
```sql
SELECT column_1, column_2
FROM table
ORDER BY column_1 ASC
```

Basic syntax for ORDER BY with descending
```sql
SELECT column_1, column_2
FROM table
ORDER BY column_1 DESC
```

Notice ORDER BY towards the end of a query, since we want to do any selection
and filtering first, before finally sorting.

Use ASC to sort in ascending order
Use DESC to sort in descending order
If you leave it blank, ORDER BY uses ASC by default.

You can also ORDER BY multiple columns
This makes sense when one column has duplicate entries.

============================
= Company = Name   = Sales =
============================
= Apple   = Andrew = 100   =
= Google  = David  = 500   =
= Apple   = Zach   = 300   =
= Google  = Claire = 200   =
= Xerox   = Steven = 100   =
============================

```sql
SELECT company, name, sales
FROM table
ORDER BY company, sales;
```
============================
= Company = Name   = Sales =
============================
= Apple   = Andrew = 100   =
= Apple   = Zach   = 300   =
= Google  = Claire = 200   =
= Google  = David  = 500   =
= Xerox   = Steven = 100   =
============================

Examples below
 */
--
-- Example 1
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
ORDER BY
  first_name ASC;

--
-- Example 2
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
ORDER BY
  first_name DESC;

--
-- Example 3
SELECT
  store_id,
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
ORDER BY
  store_id DESC,
  first_name ASC;
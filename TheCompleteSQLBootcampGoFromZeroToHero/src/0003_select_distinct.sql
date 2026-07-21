/*
NOTES

Sometimes a table contains a column that has duplicate values, and you may find
yourself in a situtation where you only want to list the unique/distinct values.

The DISTINCT keyword can be used to return only the distinct values in a column.

The DISTINCT keyword operates on a column. The syntax looks like this:
```sql
SELECT DISTINCT column_name
FROM table_name;
```

To clarify which column DISTINCT is being applied to, you can also use
parentheses for clarity:
```sql
SELECT DISTINCT(column_name)
FROM table_name;
```

It will work with or without parentheses.

Later on when we learn about adding more calls such as COUNT and DISTINCT
together, the parentheses will be necessary.

Imagine a table of people who were surveyed to choose a color:
===================
= NAME   = Choice =
===================
= Zach   = Green  =
= David  = Green  =
= Claire = Yellow =
= David  = Red    =
===================

We can see we have two Davids in the name column. So when we use DISTINCT
```sql
SELECT DISTINCT name
FROM color_table;
```
===========
= NAME   =
===========
= Zach   =
= David  =
= Claire =
==========

Given the previous example, we don't really know if the person with the name
"David" was a duplicate entry, or two different people with the same first name.

Calling DISTINCT here answered the question.
What are the unique first names in the table?

Examples below
 */
--
-- Example 1
-- We will select all the columns from the film table in the database.
-- What unique release years exist?
-- What unique ratings exist?
-- What are all the rental rates?
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;

-- Example 2
-- We will select the unique release years from the film table in the database.
-- We see all these films were released in 2006.
SELECT DISTINCT
  release_year
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;

-- Example 3
-- We will select the unique ratings from the film table in the database.
-- We see films were rated G, PG, PG-13, R, NC-17.
SELECT DISTINCT
  rating
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;

-- Example 4
-- We will select the unique rental rates from the film table in the database.
-- We see films were rented at rates of 0.99, 2.99, 4.99.
SELECT DISTINCT
  rental_rate
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;
/*
NOTES

SELECT is the most common statement used, and it allows us to retrieve
information from a table.

Later on we will learn how to combine SELECT with other statements to perform
more complex queries.

Example syntax for SELECT statement:
SELECT column_name FROM table_name;

Database has N tables like table_1, table_2, ... and each table is like a
spreadsheet with columns (fields/attributes) and rows (records). Postgres and
various other dialects will read this statement as FROM table_name, find that
one and then we select the column or columns.

We can query single column, multiple columns, or all columns.

single column
```sql
SELECT column_1
FROM table_1;
```

multiple column
```sql
SELECT column_1, column_2
FROM table_1;
```

all column
```sql
SELECT *
FROM table_1;
```

In general it is not good practice to use asterisk(*) in the SELECT statement
if you don't really need all columns.

It will automatically query everything, which increases traffic between the
database server and the application, which can slow down the retrieval of
results.

If you only need certain columns, do your best to only query for those columns.

Examples below
 */
--
-- Example 1
-- Selecting all columns from the actor table
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.actor;

-- Example 2
-- Selecting multiple columns from the actor table
SELECT
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.actor;

-- Example 3
-- Selecting a multiple columns from the actor table, with different order
SELECT
  last_name,
  first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.actor;

-- Example 4
-- Selecting a single column from the actor table
SELECT
  first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.actor;
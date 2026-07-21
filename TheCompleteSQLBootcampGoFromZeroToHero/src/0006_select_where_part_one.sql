/*
NOTES

SELECT and WHERE are the most fundamental SQL statements.

The WHERE statement allows us to specify conditions on columns for the rows to
be returned.

The WHERE clause appears immediately after the FROM clause of the SELECT
statement.

The conditions are used to filter the rows returned from the SELECT statement.

PostgreSQL provides a variety of standard operators to construct the conditions.

Comparison operators:
- Compare a column value to something.
-- Is the price greater than $3.00?
-- Is the pet's name equal to "Sam"?
===========================================
= Operator     = Description              =
===========================================
= "="          = Equal to                 =
= ">"          = Greater than             =
= "<"          = Less than                =
= ">="         = Greater than or equal to =
= "<="         = Less than or equal to    =
= "<>" or "!=" = Not equal to             =
===========================================

Logical operators:
- Allow us to combine multiple comparisons operators
==========================
= Operator = Description =
==========================
= AND      = Logical AND =
= OR       = Logical OR  =
= NOT      = Logical NOT =
==========================

Simple syntax example:
===================
= NAME   = Choice =
===================
= Zach   = Green  =
= David  = Green  =
= Claire = Yellow =
= David  = Red    =
===================

```sql
SELECT name
FROM table
WHERE name = 'David';
```
=========
= NAME  =
=========
= David =
= David =
=========

```sql
SELECT name, choice
FROM table
WHERE name = 'David' AND choice = 'Red';
```
===================
= NAME   = Choice =
===================
= David  = Red    =
===================
 */
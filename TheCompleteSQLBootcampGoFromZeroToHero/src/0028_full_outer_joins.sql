/*
NOTES

There are few different types of OUTER JOINs
They will allow us to specify how to deal with values only present in one of the
tables being joined.
These are the more complex JOINs, take your time when trying to understand them.

FULL OUTER JOIN
LEFT OUTER JOIN
RIGHT OUTER JOIN

TABLES
==================== | ====================
= REGISTRATIONS    = | = LOGINS           =
==================== | ====================
= reg_id = name    = | = log_id = name    =
==================== | ====================
= 1      = Andrew  = | = 1      = Xavier  =
= 2      = Bob     = | = 2      = Andrew  =
= 3      = Charlie = | = 3      = Yolanda =
= 4      = David   = | = 4      = Bob     =
==================== | ====================

INNER JOIN
A AND B

Returns rows where there is a matching value in both tables.
============================
= name   = reg_id = log_id =
============================
= Andrew = 1      = 2      =
= Bob    = 2      = 4      =
============================

FULL OUTER JOIN
A OR B

Returns all rows when there is a match in either table.
Nulls if no match.
=============================
= name    = reg_id = log_id =
=============================
= Andrew  = 1      = 2      =
= Bob     = 2      = 4      =
= Charlie = 3      = NULL   =
= David   = 4      = NULL   =
= Xavier  = NULL   = 1      =
= Yolanda = NULL   = 3      =
=============================

LEFT OUTER JOIN
A OR (A AND B)

Returns all rows from the left table, plus matched rows from the right table.
Null if no match.
=============================
= name    = reg_id = log_id =
=============================
= Andrew  = 1      = 2      =
= Bob     = 2      = 4      =
= Charlie = 3      = NULL   =
= David   = 4      = NULL   =
=============================

RIGHT OUTER JOIN
B OR (A AND B)

Returns all rows from the right table, plus matched rows from the left table.
Null if no match.
=============================
= name    = reg_id = log_id =
=============================
= Xavier  = NULL   = 1      =
= Andrew  = 1      = 2      =
= Yolanda = NULL   = 3      =
= Bob     = 2      = 4      =
=============================

Example below
 */
--
-- Example 1
-- INNER JOIN
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.registrations
  INNER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.logins USING (NAME);

--
-- Example 2
-- FULL OUTER JOIN
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.registrations
  FULL OUTER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.logins USING (NAME);

--
-- Example 3
-- LEFT OUTER JOIN
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.registrations
  LEFT OUTER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.logins USING (NAME);

--
-- Example 4
-- RIGHT OUTER JOIN
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.registrations
  RIGHT OUTER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.logins USING (NAME);

--
-- Example 5
-- FULL OUTER JOIN without intersection
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.registrations AS R
  FULL OUTER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.logins AS L USING (NAME)
WHERE
  R.reg_id IS NULL
  OR L.log_id IS NULL;

--
-- Example 6
-- FULL OUTER JOIN test on sum affect
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer AS C
  FULL OUTER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.payment AS P ON C.customer_id = P.customer_id
WHERE
  C.customer_id IS NULL
  OR P.payment_id IS NULL;
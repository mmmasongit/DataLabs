/*
NOTES

What is a JOIN operation?
JOINs allow us to combine multiple tables together.
The main reasons for the different JOIN types is to decide how to deal with
information only present in one of the joined tables.

Let's imagine a simple example.
Our company is holding a conference for people in the movie rental industry.
We'll have people register online beforehand and then login the day of the
conference.

After the conference we have these tables

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

The respective id columns indicate what order they registered or logged in on
site. For the sake of simplicity, we will assume the names are unique. Note that
Registrations names first letters go A, B, C, D to keep track easier.

An INNER JOIN will result with the set of records that match in both tables.

An INNER JOIN will result with the set of records that match in both tables.

So
==================== | ====================
= REGISTRATIONS    = | = LOGINS           =
==================== | ====================
= reg_id = name    = | = log_id = name    =
==================== | ====================
= 1      = Andrew  = | = 2      = Andrew  =
= 2      = Bob     = | = 4      = Bob     =
==================== | ====================

Example below
 */
--
-- Example 1
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment AS P
  INNER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.customer AS C ON P.customer_id = C.customer_id;

--
-- Example 2
SELECT
  P.payment_id,
  P.customer_id,
  C.first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.payment AS P
  INNER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.customer AS C ON P.customer_id = C.customer_id;

--
-- Example 3
SELECT
  P.payment_id,
  P.customer_id,
  C.first_name
FROM
  -- Order doesn't matter
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer AS C
  INNER JOIN the_complete_sql_bootcamp_go_from_zero_to_hero.payment AS P ON P.customer_id = C.customer_id;
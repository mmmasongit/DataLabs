/*
Challenge

Business Situation
We want to send out a promotional email to our existing customers!

Challenge Question
Use a SELECT statement to grab the first and last names of every customer and\
their email address.
 */
--
-- We want to see all columns and find the information we are looking for.
SELECT
  *
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer;

--
-- Now we can see we want to query for first_name, last_name, and email.
SELECT
  first_name,
  last_name,
  email
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer;
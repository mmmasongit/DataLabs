/*
Challenge

Business Situation
An Australian vistor isn't familiar with MPAA movie ratings
(e.g. PG, PG-13, R, etc...)
We want to know the types of ratings we have in our dateebase.
What ratings do we have available?

Challenge Question
SELECT DISTINCT to retrieve the distinct rating types our films could have in
our database.

 */
--
-- Select the distinct rating types from the film table
SELECT DISTINCT
  rating
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;
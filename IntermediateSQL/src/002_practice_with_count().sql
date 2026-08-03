-- Count the total number of records in the people table, aliasing the result as
-- count_records.
SELECT
  COUNT(*) AS count_records
FROM
  intermediate_sql.people;

-- Count the number of records with a birthdate in the people table, aliasing
-- the result as count_birthdate.
SELECT
  COUNT(birthdate) AS count_birthdate
FROM
  intermediate_sql.people;

-- Count the records for languages and countries in the films table; alias as
-- count_languages and count_countries.
SELECT
  COUNT(LANGUAGE) AS count_languages,
  COUNT(country) AS count_countries
FROM
  intermediate_sql.films;
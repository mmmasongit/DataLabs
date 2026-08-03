-- Return the unique countries represented in the films table using DISTINCT.
SELECT DISTINCT
  (country)
FROM
  intermediate_sql.films;

-- Return the number of unique countries represented in the films table, aliased
-- as count_distinct_countries.
SELECT
  COUNT(DISTINCT (country)) AS count_distinct_countries
FROM
  intermediate_sql.films;
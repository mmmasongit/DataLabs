-- Use the SUM() function to calculate the total duration of all films and alias
-- with total_duration.
SELECT
  SUM(duration) AS total_duration
FROM
  intermediate_sql.films;

-- Calculate the average duration of all films and alias with average_duration.
SELECT
  AVG(duration) AS average_duration
FROM
  intermediate_sql.films;

-- Find the most recent release_year in the films table, aliasing as
-- latest_year.
SELECT
  MAX(release_year) AS latest_year
FROM
  intermediate_sql.films;

-- Find the duration of the shortest film.
SELECT
  MIN(duration) AS shortest_film
FROM
  intermediate_sql.films;
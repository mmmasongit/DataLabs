-- Select the name of each person in the people table, sorted alphabetically.
SELECT
  NAME
FROM
  intermediate_sql.people
ORDER BY
  NAME ASC;

-- Select the title and duration for every film, from longest duration to
-- shortest.
SELECT
  title,
  duration
FROM
  intermediate_sql.films
ORDER BY
  duration;
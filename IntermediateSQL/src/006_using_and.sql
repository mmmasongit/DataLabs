-- Select the title and release_year for all German-language films released
-- before 2000.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  LANGUAGE = 'German'
  AND release_year < 2000;

-- Update the query from the previous step to show German-language films
-- released after 2000 rather than before.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  release_year > 2000
  AND LANGUAGE = 'German';

-- Select all details for German-language films released after 2000 but before
-- 2010 using only WHERE and AND.
SELECT
  *
FROM
  intermediate_sql.films
WHERE
  release_year > 2000
  AND release_year < 2010
  AND LANGUAGE = 'German';
-- Select the title and release_year for films released in 1990 or 1999 using
-- only WHERE and OR.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  release_year = 1990
  OR release_year = 1999;

-- Filter the records to only include English or Spanish-language films.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  (
    release_year = 1990
    OR release_year = 1999
  )
  AND (
    LANGUAGE = 'English'
    OR LANGUAGE = 'Spanish'
  );

-- Finally, restrict the query to only return films worth more than $2,000,000
-- gross.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  (
    release_year = 1990
    OR release_year = 1999
  )
  AND (
    LANGUAGE = 'English'
    OR LANGUAGE = 'Spanish'
  )
  AND (gross > 2000000);
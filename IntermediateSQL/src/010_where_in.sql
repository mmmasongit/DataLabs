-- Select the title and release_year of all films released in 1990 or 2000 that
-- were longer than two hours.
SELECT
  title,
  release_year
FROM
  intermediate_sql.films
WHERE
  release_year IN (1990, 2000)
  AND duration > 120;

-- Select the title and language of all films in English, Spanish, or French
-- using IN.
SELECT
  title,
  LANGUAGE
FROM
  intermediate_sql.films
WHERE
  LANGUAGE IN ('English', 'French', 'Spanish');

-- Find the title, certification, and language all films certified NC-17 or R 
-- that are in English, Italian, or Greek.
SELECT
  title,
  certification,
  LANGUAGE
FROM
  intermediate_sql.films
WHERE
  LANGUAGE IN ('English', 'Greek', 'Italian')
  AND certification IN ('NC-17', 'R');
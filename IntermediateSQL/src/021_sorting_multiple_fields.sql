-- Select the release_year, duration, and title of films ordered by their
-- release year and duration, in that order.
SELECT
  release_year,
  duration,
  title
FROM
  intermediate_sql.films
ORDER BY
  duration ASC,
  release_year ASC;

-- Select the certification, release year, and title sorted by certification and
-- release year
SELECT
  certification,
  release_year,
  title
FROM
  intermediate_sql.films
ORDER BY
  certification ASC,
  release_year ASC;
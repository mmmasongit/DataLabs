-- Select the title of every film that doesn't have a budget associated with it
-- and use the alias no_budget_info.
SELECT
  title AS no_budget_info
FROM
  intermediate_sql.films
WHERE
  budget IS NULL;

-- Count the number of films with a language associated with them and use the
-- alias count_language_known.
SELECT
  COUNT(LANGUAGE) AS count_language_known
FROM
  intermediate_sql.films
WHERE
  LANGUAGE IS NOT NULL;
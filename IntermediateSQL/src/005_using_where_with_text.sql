-- Select and count the language field using the alias count_spanish.
-- Apply a filter to select only Spanish from the language field.
SELECT
  COUNT(LANGUAGE) AS count_spanish
FROM
  intermediate_sql.films
WHERE
  LANGUAGE = 'Spanish';
/*
In the real world, every SQL query starts with a business question. Then it is
up to you to decide how to write the query that answers the question. Let's try
this out.

Using the films table: which release_year had the most language diversity?

Take your time to translate this question into code and test your queries in the
console.

"Most language diversity" can be interpreted as COUNT(DISTINCT ___). Now over to
you.
 */
SELECT
  release_year,
  COUNT(DISTINCT (LANGUAGE))
FROM
  intermediate_sql.films
GROUP BY
  release_year
ORDER BY
  COUNT(DISTINCT (LANGUAGE)) DESC;
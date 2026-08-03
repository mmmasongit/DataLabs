-- Select the names of all people whose names begin with 'B'.
SELECT
  NAME
FROM
  intermediate_sql.people
WHERE
  NAME LIKE 'B%';

-- Select the names of people whose names have 'r' as the second letter.
SELECT
  NAME
FROM
  intermediate_sql.people
WHERE
  NAME LIKE '_r%';

-- Select the names of people whose names don't start with 'A'.
SELECT
  NAME
FROM
  intermediate_sql.people
WHERE
  NAME NOT LIKE 'A%';
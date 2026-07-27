/*
NOTES

We've already been able to perform direct comparisons against strings, such as
- WHERE first_name = 'John'

But what if we want to match against a general pattern in a string?
- All emails ending in '@gmail.com'
- All names that begin with an 'A'

The LIKE operator allows us to perform pattern matching against string data
with the use of wildcard characters:
- Percent %
-- Matches any sequence of characters
- Underscore _
-- Matches any single character

All names that begin with an 'A'
- WHERE name LIKE 'A%'

All names that end with an 'a'
- WHERE name LIKE '%a'

Notice that LIKE is case-sensitive, we can use ILIKE which is case-insensitive

Using the underscore allows us to replace just a single character
- Get all Mission Impossible films
- WHERE title LIKE 'Mission Impossible _'

You can use multiple underscores

Imagine we had version string codes in the format 'Version#A4', 'Version#B7',...
- WHERE value LIKE 'Version#__'

We can also combine pattern matching operators to create more complex patterns
- WHERE name LIKE '_her%'
-- Cheryl
-- Theresa
-- Sherri

Example below
 */
--
-- Example 1
SELECT
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name LIKE 'J%'
  AND last_name LIKE 'S%';

--
-- Example 2
SELECT
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name ILIKE 'j%'
  AND last_name ILIKE 's%';

--
-- Example 3
SELECT
  first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name LIKE '%er%';

--
-- Example 4
SELECT
  first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name LIKE '_her%';

--
-- Example 4
SELECT
  first_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name NOT LIKE '_her%';

--
-- Example 5
SELECT
  first_name,
  last_name
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.customer
WHERE
  first_name LIKE 'A%'
  AND last_name NOT LIKE 'B%'
ORDER BY
  last_name;
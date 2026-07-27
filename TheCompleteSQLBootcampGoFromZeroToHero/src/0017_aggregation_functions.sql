/*
NOTES

MOST Common Aggregate Functions
- AVG   - returns average value
- COUNT - returns number of values
- MAX   - returns maximum value
- MIN   - returns minimum value
- SUM   - returns the sum of all values

Aggregate function calls happen only in the SELECT clause or the HAVING clause.

Special Notes
- AVG() returns a floating point value
many decimal places (e.g. 2.342418)
-- You can use ROUND() to specify precision after the decimal.
- COUNT() simply returns the number of rows, which means by convention we just
use COUNT(*)

Examples below
 */
--
-- Example 1
SELECT
  MIN(replacement_cost)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;

--
-- Example 2
SELECT
  MAX(replacement_cost)
FROM
  the_complete_sql_bootcamp_go_from_zero_to_hero.film;
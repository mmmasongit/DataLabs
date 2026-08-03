-- Select only the unique authors from the books table.
SELECT DISTINCT
  (author)
FROM
  introduction_to_sql.books;

-- Update the code to return the unique author and genre combinations in the
-- books table.
SELECT DISTINCT
  author,
  genre
FROM
  introduction_to_sql.books;
-- Select unique authors from the books table
SELECT DISTINCT
  (author)
FROM
  introduction_to_sql.books;

-- Select unique authors and genre combinations from the books table
SELECT DISTINCT
  author,
  genre
FROM
  introduction_to_sql.books;
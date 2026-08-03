-- Create a view called library_authors.
CREATE VIEW
  library_authors AS
SELECT DISTINCT
  author AS unique_author
FROM
  introduction_to_sql.books;

-- Check that the view was created by selecting all columns from
-- library_authors.
SELECT
  *
FROM
  library_authors;
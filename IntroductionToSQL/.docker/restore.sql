DROP SCHEMA IF EXISTS introduction_to_sql CASCADE;

CREATE schema introduction_to_sql;

DROP TABLE IF EXISTS introduction_to_sql.books CASCADE;

-- BOOKS
-- 
CREATE TABLE
  introduction_to_sql.books (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    year NUMERIC NOT NULL,
    genre TEXT NOT NULL
  );

COPY introduction_to_sql.books (id, title, author, year, genre)
FROM
  '/docker-entrypoint-initdb.d/IntroductionToSQL/assets/books.csv'
WITH
  (FORMAT csv, HEADER true, DELIMITER ',');
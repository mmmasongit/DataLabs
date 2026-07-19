DROP SCHEMA IF EXISTS intermediate_sql CASCADE;

CREATE schema intermediate_sql;

-- FILMS
-- id, title, release_year, country, duration, language, certification, gross, budget
CREATE TABLE
  intermediate_sql.films (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    release_year NUMERIC,
    country TEXT,
    duration NUMERIC,
    language TEXT,
    certification TEXT,
    gross NUMERIC,
    budget NUMERIC
  );

COPY intermediate_sql.films (
  id,
  title,
  release_year,
  country,
  duration,
  language,
  certification,
  gross,
  budget
)
FROM
  '/docker-entrypoint-initdb.d/IntermediateSQL/assets/films.csv'
WITH
  (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    FORCE_NULL (release_year, country, duration, language, certification, gross, budget)
  );

-- PEOPLE
-- id, name, birthdate, deathdate
CREATE TABLE
  intermediate_sql.people (id INTEGER PRIMARY KEY, name TEXT NOT NULL, birthdate DATE, deathdate DATE);

COPY intermediate_sql.people (id, name, birthdate, deathdate)
FROM
  '/docker-entrypoint-initdb.d/IntermediateSQL/assets/people.csv'
WITH
  (FORMAT csv, HEADER true, DELIMITER ',', FORCE_NULL (birthdate, deathdate));

-- REVIEWS
-- id, film_id, num_user, num_critic, imdb_score, num_votes, facebook_likes
CREATE TABLE
  intermediate_sql.reviews (
    id SERIAL PRIMARY KEY,
    film_id INTEGER NOT NULL,
    num_user NUMERIC,
    num_critic NUMERIC,
    imdb_score NUMERIC NOT NULL,
    num_votes INTEGER NOT NULL,
    facebook_likes NUMERIC NOT NULL
  );

COPY intermediate_sql.reviews (film_id, num_user, num_critic, imdb_score, num_votes, facebook_likes)
FROM
  '/docker-entrypoint-initdb.d/IntermediateSQL/assets/reviews.csv'
WITH
  (FORMAT csv, HEADER true, DELIMITER ',', FORCE_NULL (num_user, num_critic));

-- ROLES
-- id, film_id, person_id, role
CREATE TABLE
  intermediate_sql.roles (
    id INTEGER PRIMARY KEY,
    film_id INTEGER NOT NULL REFERENCES intermediate_sql.films (id),
    person_id INTEGER NOT NULL REFERENCES intermediate_sql.people (id),
    role TEXT NOT NULL
  );

COPY intermediate_sql.roles (id, film_id, person_id, role)
FROM
  '/docker-entrypoint-initdb.d/IntermediateSQL/assets/roles.csv'
WITH
  (FORMAT csv, HEADER true, DELIMITER ',');
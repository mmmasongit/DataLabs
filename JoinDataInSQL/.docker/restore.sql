DROP SCHEMA IF EXISTS join_data_in_sql CASCADE;

CREATE SCHEMA join_data_in_sql;

-- CREATE cities table
CREATE TABLE
  join_data_in_sql.cities (
    NAME TEXT NOT NULL,
    country_code TEXT NOT NULL,
    city_proper_pop INTEGER NOT NULL,
    metroarea_pop INTEGER,
    urbanarea_pop INTEGER NOT NULL
  );

COPY join_data_in_sql.cities (NAME, country_code, city_proper_pop, metroarea_pop, urbanarea_pop)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/cities.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',', FORCE_NULL (metroarea_pop));

-- CREATE countries table
CREATE TABLE
  join_data_in_sql.countries (
    code TEXT NOT NULL,
    country_name TEXT NOT NULL,
    continent TEXT NOT NULL,
    region TEXT NOT NULL,
    surface_area NUMERIC NOT NULL,
    indep_year INTEGER,
    local_name TEXT NOT NULL,
    gov_form TEXT NOT NULL,
    capital TEXT,
    cap_long NUMERIC,
    cap_lat NUMERIC
  );

COPY join_data_in_sql.countries (
  code,
  country_name,
  continent,
  region,
  surface_area,
  indep_year,
  local_name,
  gov_form,
  capital,
  cap_long,
  cap_lat
)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/countries.csv'
WITH
  (
    FORMAT CSV,
    HEADER TRUE,
    DELIMITER ',',
    FORCE_NULL (indep_year, capital, cap_long, cap_lat)
  );

-- CREATE currencies TABLE
CREATE TABLE
  join_data_in_sql.currencies (
    curr_id INTEGER NOT NULL,
    code TEXT NOT NULL,
    basic_unit TEXT NOT NULL,
    curr_code TEXT NOT NULL,
    frac_unit TEXT,
    frac_perbasic INTEGER
  );

COPY join_data_in_sql.currencies (curr_id, code, basic_unit, curr_code, frac_unit, frac_perbasic)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/currencies.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',', FORCE_NULL (frac_unit, frac_perbasic));

-- CREATE economies TABLE
CREATE TABLE
  join_data_in_sql.economies (
    econ_id INTEGER NOT NULL,
    code TEXT NOT NULL,
    YEAR INTEGER NOT NULL,
    income_group TEXT NOT NULL,
    gdp_percapita NUMERIC,
    gross_savings NUMERIC,
    inflation_rate NUMERIC,
    total_investment NUMERIC,
    unemployment_rate NUMERIC,
    exports NUMERIC,
    imports NUMERIC
  );

COPY join_data_in_sql.economies (
  econ_id,
  code,
  YEAR,
  income_group,
  gdp_percapita,
  gross_savings,
  inflation_rate,
  total_investment,
  unemployment_rate,
  exports,
  imports
)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/economies.csv'
WITH
  (
    FORMAT CSV,
    HEADER TRUE,
    DELIMITER ',',
    FORCE_NULL (
      gdp_percapita,
      gross_savings,
      inflation_rate,
      total_investment,
      unemployment_rate,
      exports,
      imports
    )
  );

-- CREATE economies2015 TABLE
CREATE TABLE
  join_data_in_sql.economies2015 (
    code TEXT NOT NULL,
    YEAR INTEGER NOT NULL,
    income_group TEXT NOT NULL,
    gross_savings NUMERIC NOT NULL
  );

COPY join_data_in_sql.economies2015 (code, YEAR, income_group, gross_savings)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/economies2015.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE economies2019 TABLE
CREATE TABLE
  join_data_in_sql.economies2019 (
    code TEXT NOT NULL,
    YEAR INTEGER NOT NULL,
    income_group TEXT NOT NULL,
    gross_savings NUMERIC NOT NULL
  );

COPY join_data_in_sql.economies2019 (code, YEAR, income_group, gross_savings)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/economies2019.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE eu_countries TABLE
CREATE TABLE
  join_data_in_sql.eu_countries (code TEXT NOT NULL, NAME TEXT NOT NULL);

COPY join_data_in_sql.eu_countries (code, NAME)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/eu_countries.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE languages TABLE
CREATE TABLE
  join_data_in_sql.languages (
    lang_id INTEGER NOT NULL,
    code TEXT NOT NULL,
    NAME TEXT NOT NULL,
    percent NUMERIC,
    official BOOLEAN NOT NULL
  );

COPY join_data_in_sql.languages (lang_id, code, NAME, percent, official)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/languages.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',', FORCE_NULL (percent));

-- CREATE populations TABLE
CREATE TABLE
  join_data_in_sql.populations (
    pop_id INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    YEAR INTEGER NOT NULL,
    fertility_rate NUMERIC,
    life_expectancy NUMERIC,
    size INTEGER
  );

COPY join_data_in_sql.populations (pop_id, country_code, YEAR, fertility_rate, life_expectancy, size)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/countries/populations.csv'
WITH
  (
    FORMAT CSV,
    HEADER TRUE,
    DELIMITER ',',
    FORCE_NULL (fertility_rate, life_expectancy, size)
  );

-- CREATE monarchs TABLE
CREATE TABLE
  join_data_in_sql.monarchs (country TEXT NOT NULL, continent TEXT NOT NULL, monarch TEXT NOT NULL);

COPY join_data_in_sql.monarchs (country, continent, monarch)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/leaders/monarchs.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE presidents TABLE
CREATE TABLE
  join_data_in_sql.presidents (country TEXT NOT NULL, continent TEXT NOT NULL, president TEXT NOT NULL);

COPY join_data_in_sql.presidents (country, continent, president)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/leaders/presidents.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE prime_minister_terms TABLE
CREATE TABLE
  join_data_in_sql.prime_minister_terms (prime_minister TEXT NOT NULL, pm_start INTEGER NOT NULL);

COPY join_data_in_sql.prime_minister_terms (prime_minister, pm_start)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/leaders/prime_minister_terms.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE prime_ministers TABLE
CREATE TABLE
  join_data_in_sql.prime_ministers (country TEXT NOT NULL, continent TEXT NOT NULL, prime_minister TEXT NOT NULL);

COPY join_data_in_sql.prime_ministers (country, continent, prime_minister)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/leaders/prime_ministers.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');

-- CREATE states TABLE
CREATE TABLE
  join_data_in_sql.states (country TEXT NOT NULL, continent TEXT NOT NULL, indep_year INTEGER NOT NULL);

COPY join_data_in_sql.states (country, continent, indep_year)
FROM
  '/docker-entrypoint-initdb.d/JoinDataInSQL/assets/leaders/states.csv'
WITH
  (FORMAT CSV, HEADER TRUE, DELIMITER ',');
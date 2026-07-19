DROP SCHEMA IF EXISTS analyzing_students_mental_health CASCADE;

CREATE schema analyzing_students_mental_health;

-- STUDENTS
/*
"index", "inter_dom", "region", "gender", "academic", "age", "age_cate", "stay",
"stay_cate","japanese","japanese_cate","english","english_cate","intimate",
"religion","suicide","dep","deptype","todep","depsev","tosc","apd","ahome",
"aph","afear","acs","aguilt","amiscell","toas","partner","friends","parents",
"relative","profess","phone","doctor","reli","alone","others","internet",
"partner_bi","friends_bi","parents_bi","relative_bi","professional_bi",
"phone_bi","doctor_bi","religion_bi","alone_bi","others_bi","internet_bi"
 */
CREATE TABLE
  analyzing_students_mental_health.students (id INTEGER PRIMARY KEY);

COPY analyzing_students_mental_health.students (id)
FROM
  '/docker-entrypoint-initdb.d/AnalyzingStudentsMentalHealth/assets/students.csv'
WITH
  (FORMAT csv, HEADER true, DELIMITER ',');
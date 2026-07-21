#!/bin/bash

files=(
  "/docker-entrypoint-initdb.d/AnalyzingStudentsMentalHealth/restore.sql"
  "/docker-entrypoint-initdb.d/IntermediateSQL/restore.sql"
  "/docker-entrypoint-initdb.d/IntroductionToSQL/restore.sql"
  "/docker-entrypoint-initdb.d/JoinDataInSQL/restore.sql"
  "/docker-entrypoint-initdb.d/TheCompleteSQLBootcampGoFromZeroToHero/restore.sql"
)

restore_postgres() {
  psql -v ON_ERROR_STOP=1 \
       -U "$POSTGRES_USER" \
       -d "$POSTGRES_DB" \
       -f "$1"
}

echo "=== EXECUTING RESTORE SQL - POSTGRES DATABASE ==="
for file in "${files[@]}"; do
  restore_postgres "$file"
done

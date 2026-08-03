#!/bin/bash

files=()

restore_mysql() {
  mysql --show-warnings \
        --force \
        -u "$MYSQL_USER" \
        -p"$MYSQL_PASSWORD" \
        "$MYSQL_DB" \
        < "$1"
}

echo "=== EXECUTING RESTORE SQL - MYSQL DATABASE ==="
for file in "${files[@]}"; do
  restore_mysql "$file"
done
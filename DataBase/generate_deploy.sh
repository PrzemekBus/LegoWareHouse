#!/bin/bash

# filepath: c:\Users\gramp\OneDrive\Pulpit\LegoWareHouse\DataBase\generate_deploy.sh

# Ścieżka do folderu z plikami SQL
BASE_DIR="c:/Users/gramp/OneDrive/Pulpit/LegoWareHouse/DataBase"

# Plik wyjściowy
DEPLOY_FILE="$BASE_DIR/deploy.sql"

# Tworzenie nagłówka pliku
echo "-------------Initialization tables-------------" > "$DEPLOY_FILE"

# Dodawanie plików z folderu tables
for file in "$BASE_DIR/tables"/*.sql; do
  echo "@tables/$(basename "$file")" >> "$DEPLOY_FILE"
done

# Dodawanie plików z folderu scripts
echo -e "\n-------------Initialization scripts-------------" >> "$DEPLOY_FILE"
for file in "$BASE_DIR/scripts"/*.sql; do
  echo "@scripts/$(basename "$file")" >> "$DEPLOY_FILE"
done

# Dodawanie plików z folderu indexes
echo -e "\n-------------Initialization indexes-------------" >> "$DEPLOY_FILE"
for file in "$BASE_DIR/indexes"/*.sql; do
  echo "@indexes/$(basename "$file")" >> "$DEPLOY_FILE"
done

# Dodawanie plików z folderu constraints
echo -e "\n-------------Initialization constraints-------------" >> "$DEPLOY_FILE"
for file in "$BASE_DIR/constraints"/*.sql; do
  echo "@constraints/$(basename "$file")" >> "$DEPLOY_FILE"
done

# Dodawanie plików z folderu migrations
echo -e "\n-------------Initialization updates-------------" >> "$DEPLOY_FILE"
for file in "$BASE_DIR/migrations"/*.sql; do
  echo "@migrations/$(basename "$file")" >> "$DEPLOY_FILE"
done

echo "Deploy file generated at $DEPLOY_FILE"

# Automatyczne dodanie zmian do Git
cd "$BASE_DIR" || exit
git add .
git commit -m "Auto-generated deploy.sql with updated file references"
echo "Changes committed to Git."
#!/bin/bash

# Ścieżka do folderu z plikami SQL
BASE_DIR="c:/Users/gramp/OneDrive/Pulpit/LegoWareHouse/DataBase"

# Plik wyjściowy
DEPLOY_FILE="$BASE_DIR/deploy.sql"

# Tworzenie nagłówka pliku
echo "-------------Initialization tables-------------" > "$DEPLOY_FILE"

# Funkcja do dodawania sekcji tylko, jeśli folder zawiera pliki
add_section() {
  local folder=$1
  local section_name=$2
  local prefix=$3

  if compgen -G "$folder/*.sql" > /dev/null; then
    echo -e "\n-------------$section_name-------------" >> "$DEPLOY_FILE"
    for file in "$folder"/*.sql; do
      echo "$prefix/$(basename "$file")" >> "$DEPLOY_FILE"
    done
  fi
}

# Dodawanie sekcji
add_section "$BASE_DIR/tables" "Initialization tables" "@tables"
add_section "$BASE_DIR/sequences" "Initialization sequences" "@sequences"
add_section "$BASE_DIR/indexes" "Initialization indexes" "@indexes"
add_section "$BASE_DIR/constraints" "Initialization constraints" "@constraints"
add_section "$BASE_DIR/migrations" "Initialization updates" "@migrations"
add_section "$BASE_DIR/scripts" "Initialization scripts" "@scripts"

echo "Deploy file generated at $DEPLOY_FILE"

# Automatyczne dodanie zmian do Git
cd "$BASE_DIR" || exit
git add .
git commit -m "Auto-generated deploy.sql with updated file references"
echo "Changes committed to Git."
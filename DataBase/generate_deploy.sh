#!/bin/bash

# Ścieżka do folderu z plikami SQL
BASE_DIR="c:/Users/gramp/OneDrive/Pulpit/LegoWareHouse/DataBase"

# Plik wyjściowy
DEPLOY_FILE="$BASE_DIR/deploy.sql"

# Tworzenie nagłówka pliku
echo "-------------Initialization script-------------" > "$DEPLOY_FILE"

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

# Iteracja po wszystkich folderach w BASE_DIR
for folder in "$BASE_DIR"/*; do
  if [ -d "$folder" ]; then
    folder_name=$(basename "$folder")
    add_section "$folder" "$folder_name" "@$folder_name"
  fi
done

echo "Deploy file generated at $DEPLOY_FILE"

# Automatyczne dodanie zmian do Git
cd "$BASE_DIR" || exit
git add "$DEPLOY_FILE"
git commit -m "Auto-generated deploy.sql with updated file references"
echo "Changes committed to Git."
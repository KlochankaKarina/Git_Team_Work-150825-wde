#!/bin/bash

# Запрос исходной и целевой директории у пользователя
read -p "Ввести путь к исходной директрии: " source_directory
read -p "Ввести путь к целевой директории: " target_directory

# Запрос расширения файлов, которые нужно скопировать
echo -n "Please enter files extension to copy them:"
read file_extension
echo "Thank you. File extension: $file_extension"
# Запросить новое расширение для файлов.

# Проверка существования исходной директории и целевой директории
for DIR in "$source_directory" "$target_directory" 
 do
    if [[ ! -d "$DIR" || ! -r "$DIR" || ! -x "$DIR" ]] 
      then
        echo "Error: directory doesn't exist or is inaccessible: $DIR"
        exit 1
    fi
done
# Проверка, есть ли файлы с указанным расширением в исходной директории
list=$(ls "$source_directory"/*."$file_extension")
if [ ! -z "$list" ]; then
    echo "Файлы с расширением .$file_extension  найдены"
else
    echo "Ошибка: файлов с расширением .$file_extension  нет"
    exit 1
fi

# Копирование файлов с указанным расширением в целевую директорию
for i in "$source_directory"/*."$file_extension"; do cp "$i" "$target_directory/"; done
# Архивация исходных файлов.


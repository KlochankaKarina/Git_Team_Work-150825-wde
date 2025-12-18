#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать
echo "Please enter files extension to copy them:"
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

# Копирование файлов с указанным расширением в целевую директорию

# Архивация исходных файлов.


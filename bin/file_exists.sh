#!/bin/bash
read -p "enter the file path: " file_path
echo $file_path
file_path=$(realpath $file_path)
if [ -e "$file_path" ]; then
echo "file exists."
else
echo "file not existing."
fi

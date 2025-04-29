#!/bin/bash
read -p "Enter the first filename: " file1
read -p "Enter the second filename: " file2
read -p "Enter the name for the new file: " new_file
cat "$file1" "$file2" | sort > "$new_file"
echo "Files '$file1' and '$file2' have been sorted and saved to '$new_file'."

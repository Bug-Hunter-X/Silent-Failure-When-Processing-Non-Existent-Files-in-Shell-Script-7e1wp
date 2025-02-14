#!/bin/bash

# This script processes a list of files with proper error handling.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # Check if the file exists
  if [ -f "$file" ]; then
    head -n 1 "$file" > "${file}.head"
    if [ $? -ne 0 ]; then
      echo "Error processing $file" >&2
      exit 1
    fi
  else
    echo "Warning: File $file not found" >&2
  fi
done

#Example of creating dummy files for testing
touch /tmp/file1.txt
echo "Line 1 file 1" > /tmp/file1.txt
touch /tmp/file2.txt
echo "Line 1 file 2" > /tmp/file2.txt

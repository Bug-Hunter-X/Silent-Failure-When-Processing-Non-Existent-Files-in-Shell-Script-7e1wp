#!/bin/bash

# This script attempts to process a list of files, but it has a subtle error.
files=("/tmp/file1.txt" "/tmp/file2.txt" "/tmp/file3.txt")

for file in "${files[@]}"; do
  echo "Processing: $file"
  # ... some file processing ...
  # This will cause issues if the files do not exist.
  head -n 1 "$file" > "${file}.head"
done
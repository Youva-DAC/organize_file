#!/bin/bash

# Check if directory is provided as an argument, otherwise use the current directory
DIR="${1:-.}"

# Ensure the directory exists
if [ ! -d "$DIR" ]; then
  echo "The specified directory does not exist."
  exit 1
fi

# Change to the specified directory
cd "$DIR"

# Loop through each file in the directory
for FILE in *; do
  # Skip directories
  if [ -d "$FILE" ]; then
    continue
  fi

  # Get the file extension (without the dot)
  EXT="${FILE##*.}"

  # Skip files without an extension
  if [ "$EXT" == "$FILE" ]; then
    EXT="no_extension"
  fi

  # Create a directory for the extension if it doesn't already exist
  if [ ! -d "$EXT" ]; then
    mkdir "$EXT"
  fi

  # Move the file into the corresponding extension directory
  mv "$FILE" "$EXT/"
done

echo "Files have been organized."

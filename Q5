#!/bin/bash

# Check if the number of arguments is correct
if [ "$#" -ne 2 ]; then
    echo "Error: Incorrect number of arguments. Please provide two folder names." > error.txt
    exit 1
fi

# Check if the arguments are folders
if [ ! -d "$1" ] || [ ! -d "$2" ]; then
    echo "Error: One or both arguments are not folders." > error.txt
    exit 1
fi

# Delete files from directory 1 that are also in directory 2
cd "$1"
for file in *; do
    if [ -f "$2/$file" ]; then
        rm "$file"
    fi
done
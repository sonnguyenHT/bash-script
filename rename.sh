#!/bin/bash

# Change to the directory containing the file
cd /home/son/Documents/FinX-Code/testing/python_rename/

# Get the old file name and split it into parts
file_names=$(find . -name "*.json")
echo $file_names

# Iterate over the list of numbers
for string in *
do
    echo "before: $string"

    # remove leading and trailing whitespace
    string1="${string#"${string%%[![:space:]]*}"}"
    string1="${string1%"${string1##*[![:space:]]}"}"

    # remove parentheses and the content inside them
    string1="${string1//[()]/}"

    # remove any remaining whitespace
    string1="${string1// /}"

    # convert the string to lowercase
    newstring=$(echo "$string1" | tr '[A-Z]' '[a-z]')

    # print the reformatted string
    echo "later: $newstring"

    mv "$string" "$newstring"
done



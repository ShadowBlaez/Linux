#!/bin/bash

read -p  "Enter the directory name: " directory

if [ -d "$directory" ]; then
	num_files = $(find "$directory" -maxdepth 1 -type f | wc -l)
	last_edit = $(stat -c %y "$directory")
	largest_file = $(find "$directory" -type f -exec ls -l {} + | awk '{print $5, $9}' | sort -n | tail -n 1)
	smallest_file = $(find "$directory" -type f -exec ls -l {} + |awk '{print $5, $9}' | sort -n | head -n 1)

	echo "Number of files in the directory: $num_files"
	echo "Last edited: $last_edit"
	echo "Largest file: $largest_file"
	echo "Smallest file: $smallest_file"
else
	echo "Directory not found."
fi


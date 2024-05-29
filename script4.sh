#!/bin/bash

numbers=()

while true; do
	read -p "Enter a number (press 'q' to quit): " num
	if [ "$num" == "q" ]; then
		break
	fi
	numbers+=("$num")
done

sorted_numbers=($(printf "%s\n" "${numbers[@]}" | sort -n))
echo "Numbers entered in order:" "${sorted_numbers[@]}"


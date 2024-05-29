#!/bin/bash

read -p "please enter a number: " User_Number

for ((n = 1; n <= User_Number; n++)); do
	if [ $((n % 3)) -eq 0 ]; then
		echo "Fizz!"
	else [ $((n % 5)) -eq 0 ];
		echo "Buzz!"
	fi
done

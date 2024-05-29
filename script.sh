#!/bin/bash

read -p "Enter a number: " Number

if [ $((Number %2)) -eq 0 ]; 
then 	
	echo "$Number is even" && echo "$Number is even" >> File3
else
	echo "Number is odd" && echo "$Number is odd" >> File3
fi

read -p "Do you want to delete file? (y/n): " Delete_File
if [ "$Delete_File" == "y" ]; 
then
	rm "File3"
else
	touch "File3"
fi


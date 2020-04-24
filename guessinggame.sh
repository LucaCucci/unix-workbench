#!/usr/bin/env bash

condition=1
count=$(find . -maxdepth 1 -type f | wc -l)

function file_counter {
	if [[ $file_number =~ ^[0-9]+$ ]] ; then
		if [[ $file_number -gt $count ]] ; then
			echo "Too high. Try again..."
		elif [[ $file_number -lt $count ]] ; then
			echo "Too low. Try again..."
		else 
			echo "Congratulation. Exit"
			let condition=0
		fi
	else 
		echo "Is not a number. Try again..."
	fi
}

echo "Welcome to guessinggame. Guess the number of files in the current directory."

while [[ $condition -eq 1 ]]
do
	echo "Please insert a number:"
	read file_number
	file_counter
done

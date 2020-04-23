#!/usr/bin/env bash
# File guessingame.sh

condition=1
count=$(ls | wc -l)

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

echo "Welcome to guess file number in a directory game."

while [[ $condition -eq 1 ]]
do
	echo "Please insert a number:"
	read file_number
	file_counter
done

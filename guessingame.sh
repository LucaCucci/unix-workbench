#!/usr/bin/env bash
# File guessingame.sh

condition=1

function file_counter {
	echo $(find ./ -type f | wc -l) 
}

echo "Welcome to guess file number in a directory game."

while [[ $condition -eq 1 ]]
do
	echo "Please insert a number:"
	read file_number
	if [[ $file_number =~ ^[0-9]+$ ]] ; then
		count=$(file_counter)
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
done

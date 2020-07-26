#!/bin/bash

echo "Welcome to User Registration system"

echo "Valid username should start with capital letter and minimum three letters"
read -r -p "Enter first name: " fname
pattern_fname="^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]{1}[a-z]{2,}$"

if [[ $fname =~ $pattern_fname ]]
then
	echo "First name entered is valid"
else
	echo "Invalid first name"
fi

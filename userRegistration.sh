#!/bin/bash

echo "Welcome to User Registration system"

echo "Valid firstname should start with capital letter and minimum three letters"
read -r -p "Enter first name: " fname
pattern_fname="^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]{1}[a-z]{2,}$"

if [[ $fname =~ $pattern_fname ]]
then
	echo "First name entered is valid"
else
	echo "Invalid first name"
	echo "Please being the process of User Registration from start"
	exit
fi

echo "Valid lastname should start with capital letter and minimum three letters"
read -r -p "Enter last name: " lname
pattern_lname="^[ABCDEFGHIJKLMNOPQRSTUVWXYZ]{1}[a-z]{2,}$"

if [[ $lname =~ $pattern_lname ]]
then
        echo "Last name entered is valid"
else
        echo "Invalid last name"
	echo "Please being the process of User Registration from start"
	exit
fi

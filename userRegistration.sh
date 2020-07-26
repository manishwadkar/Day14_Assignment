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
	echo "Please begin the process of User Registration from start"
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
	echo "Please begin the process of User Registration from start"
	exit
fi

read -p "Enter email id: " email
pattern_email="^[A-Za-z0-9]{1,}([._+-][0-9a-zA-Z]+)*[@]{1}[a-zA-Z0-9]{1,}\.[A-Za-z]{2,4}([.][a-zA-Z]{2,})?$"
if [[ $email =~ $pattern_email ]]
then
        echo "Email id is valid"
else
        echo "Email id is invalid"
	echo "Please begin the process of User Registration from start"
        exit
fi

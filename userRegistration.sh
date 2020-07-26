#!/bin/bash

echo "Welcome to User Registration system"

LC_ALL=C        #to solve capital letters problem

echo "Valid firstname should start with capital letter and minimum three letters"
read -r -p "Enter first name: " fname
pattern_fname="^[A-Z]{1}[a-z]{2,}$"

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
pattern_lname="^[A-Z]{1}[a-z]{2,}$"

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

echo "Enter country code followed by space and ten digit mobile number"
read -p "Enter valid mobile number: " mobile
pattern_mobile="^[0-9]{2}[ ][1-9]{1}[0-9]{9}$"
if [[ $mobile =~ $pattern_mobile ]]
then
        echo "Mobile number is valid"
else
        echo "Invalid Mobile number"
	echo "Please begin the process of User Registration from start"
        exit
fi

echo "Enter a password with minimum 8 characters"
read -p "Enter a password: " passwd
#pattern_pass="[0-9a-zA-Z]{8,}"
pattern_pass1="[A-Z]{1,}"
if [[ ${#passwd} -ge 8 ]] && [[ $passwd =~ $pattern_pass1 ]]
then
	echo "Password is valid"
else
	echo "Invalid Password"
	echo "Please begin the process of User Registration from start"
        exit
fi

#!/bin/bash
#Authors: Naomi Brown
#Date 2/5/2020

#Problem 1 Code
echo "Enter a regEx: "
read regex
echo "Enter a File Name: "
read fileName

#Problem 2
egrep -c $regex $fileName

#Problem 3
echo "Number of phone numbers in regex_practice.txt: "
phoneNum=([0-9]{3}-[0-9]{3}-[0-9]{4})

egrep -c $phoneNum $fileName

#Problem 4
echo "Number of emails in regex_practice.txt: "
#emailNum=(\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b)

egrep - c "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\)" $fileName

echo "List of phone numbers in '303': "
#phoneList=(303-[0-9]{3}-[0-9]{4})
egrep -c '303-[0-9]{3}-[0-9]{4}' $fileName

echo "Stored list of emails: "
egrep -o ".*@geocities.com" $fileName >> email_results.txt



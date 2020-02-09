#!/bin/bash
#Authors: Naomi Brown
#Date 2/5/2020

#Problem 1 Code
echo "Enter A File Name: "
read fileName
echo "Enter a regEx: "
read regex
echo "Number of phone numbers: "
egrep -c $regex $fileName

#:


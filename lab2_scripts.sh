#!/bin/bash
# Authors : Luke Soguero
# Date: 1/31/2019

#Problem 1 Code:

#echo "Enter a regular expression: "
#read regEx
#echo "Enter a filename: "
#read filename
#grep $regEx $filename

#Finds number of phone numbers in file
grep '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt | wc
#Finds number of email addresses in file
grep '.\+@.\+\.com' regex_practice.txt | wc
#Lists all phone numbers that start with 303 and stores in phone_results.txt
grep '^303\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt > phone_results.txt
#List all emails with @geocities handle and stores in email_results.txt
grep '.\+@geocities\.com' regex_practice.txt > email_results.txt
#Finds expressions that match command line argument and stores in command_results.txt
grep $1 regex_practice.txt > command_results.txt
#Make sure to document how you are solving each problem!
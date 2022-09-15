#!/bin/bash

echo "Welcome to Employee Wage computation Program"

isPresent=0;
isAbsent=1;
checkAttence=$((RANDOM%2))

if [ $checkAttence -eq 0 ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi

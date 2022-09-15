#!/bin/bash

echo "Welcome to Employee Wage computation Program"

isPresent=0;
isAbsent=1;
perHrWage=20;
hrsInDay=8;

checkAttendance=$((RANDOM%2))

if [ $checkAttendance -eq 0 ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi

if [ $checkAttendance -eq 0 ]
then
	PerDaySalary=$(( perHrWage * hrsInDay ))
	echo "$PerDaySalary"
else
	PerDaySalary=0
	echo "$PerDaySalary"
fi

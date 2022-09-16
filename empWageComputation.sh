#!/bin/bash

echo "Welcome to Employee Wage computation Program"

isPresent=0;
isAbsent=1;
perHrWage=20;
hrsInDay=8;
isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empCheck=$((RANDOM%3));
checkAttendance=$((RANDOM%2));

if [ $checkAttendance -eq 0 ]
then
	PerDaySalary=$(( perHrWage * hrsInDay ))
	echo "Employee is Present and Day Wage = $PerDaySalary";
else
	PerDaySalary=0;
	echo "Employee is Absent and Day Wage = $PerDaySalary";
fi

randomCheck=$((RANDOM%3));
if [ $isFullTime -eq $randomCheck ];
then
	empHrs=16;
elif [ $isPartTime -eq $randomCheck ];
then
	empHrs=8;
else
	empHrs=0;
fi

salary=$(( $empHrs * $empRatePerHr ));

case $empCheck in 
	$isFullTime)
		empHrs=16 ;;
	$isPartTime)
		empHrs=8 ;;
	*)
		empHrs=0 ;;
esac

salary=$(($empHrs*$empRatePerHr));


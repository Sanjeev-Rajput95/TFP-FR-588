#!/bin/bash -x

isPartTime=1;
isFullTIme=2;
maxHrsInMonth=10;
empRatePerHr=20;
numWorkingDays=20;
dailyWageArr[];

totalEmpHrs=0;
totalWorkingDays=0;

function getWorkingHours() {
	case $1 in
		$isFullTime)
			workHours=8 ;;
		$isPartTime)
			workHours=4 ;;
		*)
			workHours=0 ;;
	esac

	echo $workHours

}

function dailyWage() {
        empHours=$1
        dailyWage=$(( $empHours * $empRatePerHr ))
        echo $dailyWage

}


while [[ $totalWorkHours -lt $maxHrsInMonth &&
	$totalWorkingDays -lt $numWorkingDays ]]
do
	((totalWorkingDays++))
	workHours="$( getWorkingHours $((RANDOM%3)) )"
	totalWorkHours=$(($totalWorkHours+$workHours))
	dailyWageArr[$totalWorkingDays]="$( dailyWage $workHours )"
done

totalSalary=$(( $totalWorkHours * $empRatePerHr ));

echo "Daily Wage of an Employee is : ${dailyWageArr[@]} "

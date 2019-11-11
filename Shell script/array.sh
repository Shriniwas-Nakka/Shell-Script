#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRatePerHr=20;
workingDays=20;
count=0;

totalWorkingHours=0;
totalWorkingDays=0;

function dailyHour() {
        case $1 in
        $isFullTime)
                hour=8;;
        $isPartTime)
                hour=4;;
        *)
                hour=0;;
        esac
	echo $hour
}

function wages() {
	TotalWages=$(( $1 * $empRatePerHr ))
	echo $TotalWages
}

for (( counter=1; counter<=20; counter++ ))
do
        workHour="$( dailyHour $(( RANDOM%3 )) )"
	totalWorkingHours=$(( $totalWorkingHours + $workHour ))
	wage="$( wages $(( $totalWorkingHours )) )"
	Wages[(( counter++ ))]=$wage
	totalWages=$(( $totalWages + $wage ))
	echo $totalWages
done
Wages[(( counter++ ))]=$totalWages
echo ${Wages[@]}

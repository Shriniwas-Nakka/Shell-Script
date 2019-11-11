#!/bin/bash -x
isFullTime=1;
isPartTime=2;
empRatePerHr=20;
workingDays=20;
count=0;

totalWorkingHours=0;
totalWorkingDays=0;
declare -A Wages

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
	#totalWorkingHours=$(( $totalWorkingHours + $workHour ))
	#salary=$(( $workHour * $empRatePerHour ))
	#echo $salary
	wage="$( wages $(( $workHour )) )"
	#Wages[(( counter++ ))]=$salary
	totalWages=$(( $totalWages + $wage ))
	Wages["$counter"]=$wage
	echo $totalWages
done
Wages[TotalSalary]=$totalWages

echo ${!Wages[@]}
echo ${Wages[@]}
echo ${#Wages[@]}
echo "Total Salary" ${Wages[TotalSalary]}

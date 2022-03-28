#!/bin/bash -x

function calculateWorkingHr(){
	case $1 in
			0)
				workingHr=0;
				;;
			1)
				workingHr=8;
				;;
			2)
				workingHr=4;
				;;
	esac;
	echo $workingHr;
}

perHrSalary=20;
totalSalary=0;
totalWorkingHr=0;
day=1;

declare -A dailyWage
while [[ $day -le 20 && $totalWorkingHr -lt 100 ]]
do
	wHr=$(calculateWorkingHr $((RANDOM%3)) );
	totalWorkingHr=$(($totalWorkingHr+$wHr));
	dailyWage[$day]=$totalWorkingHr;
	if [ $totalWorkingHr -gt 100 ]
	then
		totalWorkingHr=$(($totalWorkingHr-$wHr));
		dailyWage[$day]=$totalWorkingHr;
		break;
	fi
	salary=$(($perHrSalary*$wHr));
	totalSalary=$(($totalSalary+$salary));
	((day++));
done

echo "Employee has earned $totalSalary $ in a month (Total working hrs: $totalWorkingHr)";
echo "Total working hours: "${!dailyWage[@]};
echo "Daily wage: "${dailyWage[@]};

#!/bin/bash -x

perHrSalary=20;
totalSalary=0;
totalWorkingHr=0;
day=1;

checkWorkingTime=$((RANDOM%3));
case $checkWorkingTime in
	0)
   #employee is absent
   workingHour=0;
	;;
	1)
	#employee is present and working part time
	workingHour=8;
	;;
	2) 
	#employee is present and working full time
	workingHour=16;
	;;
esac

while [[ $day -le 20 ]]
do
	totalWorkingHr=$(($totalWorkingHr+$workingHour));
	salary=$(($perHrSalary*$workingHour));
	totalSalary=$(($totalSalary+$salary));
	((day++));
done

echo "Employee has earned $totalSalary $ in a month (Total working hrs: $totalWorkingHr)";

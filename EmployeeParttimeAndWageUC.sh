#!/bin/bash -x

checkWorkingTime=$((RANDOM%3));
wagePrHour=20;

if (( $checkWorkingTime==1 ))
then
	#employee is present and working part time
	workingHour=8;
elif (( $checkWorkingTime==2 ))
then
	#employee is present and working full time
	workingHour=16;
else
	#employee is absent
	workingHour=0;
fi
salary=$(($workingHour*$wagePrHour));
echo "$salary $ for working $workingHour hrs.";

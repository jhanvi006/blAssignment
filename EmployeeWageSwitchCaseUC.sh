#!/bin/bash -x

checkWorkingTime=$((RANDOM%3));
wagePrHour=20;

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
salary=$(($workingHour*$wagePrHour));
echo "$salary $ for working $workingHour hrs.";

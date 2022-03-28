#!/bin/bash -x

checkPresence=$((RANDOM%2));
wagePrHour=20;

if (( $checkPresence==1 ))
then
	#employee is present
	workingHour=8;
else
	#employee is absent
	workingHour=0;
fi
salary=$(($workingHour*$wagePrHour));
echo "$salary $ for working $workingHour hrs.";

#!/bin/bash -x

isPresent=$((RANDOM%2));

if (( $isPresent==1 ))
then
	echo "Employee is present.";
else
	echo "Employee is absent.";
fi

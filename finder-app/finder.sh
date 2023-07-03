#!/usr/bin/env bash

FILEDIR=$1
SEARCHSTR=$2

if [ -z $FILEDIR ]
then
echo "Missing Argument"
exit 1
elif [ -z $SEARCHSTR ]
then
echo "Missing Argument"
exit 1
else
ls $1 > NULL
if [ $? -eq 2 ]
then
echo "Directory not found"
exit 1
else
echo "The number of files are $(grep -r $2 $1 | wc | awk '{print $1}') and the number of matching lines are $(grep -r $2 $1 | wc | awk '{print $1}')"
exit 0
fi
fi

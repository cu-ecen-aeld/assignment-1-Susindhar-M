#!/usr/bin/env bash

WRITEFILE=$1
WRITESTR=$2
if [ -z $WRITESTR ]
then
echo "Missing Argument"
exit 1
else
mkdir -p "$(dirname $WRITEFILE)" 
touch $WRITEFILE
echo $WRITESTR > $WRITEFILE
exit 0
fi

#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
TRESHOLD_VALUE=10


while IFS= read -r line
do
    USAGE= $(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
    FOLDER=$(echo $line | awk -F " " '{print$NF}')
    if [ $USAGE -ge $TRESHOLD_VALUE ]
    then
        echo "$FOLDER    is more than $TRESHOLD_VALUE current usage is $USAGE"
    fi
done <<< $DISK_USAGE
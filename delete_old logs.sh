#!/bin/bash

SOURCE_DIRECTORY=/tmp/old_logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



if [ -d $SOURCE_DIRECTORY ]

then
    echo "$G Source directory exist $N"
else
    echo " $R please make sure to create $SOURCE_DIRECTORY $N"
fi
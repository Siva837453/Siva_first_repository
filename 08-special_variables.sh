#!/bin/bash

echo "All variables $@"
echo "No.of variables $#"
echo "script name   $0"
echo "current working directory $PWD"
echo "home directory of current user $HOME"
echo "which user is running this script $USER"
echo "Hostname $HOSTNAME"
echo "Process ID for current shell script $$"
sleep 60 &
echo "process ID for last background command $!"

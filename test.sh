#!/bin/bash

LOGS_FOLDER="/var/log/expense"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"

#echo "$SCRIPT_NAME $TIMESTAMP $LOG_FILE"

USER_ID=$(id -u)

CHECK_ROOT(){
    if [ $USER_ID -ne 0 ]
    then
        echo "Please use sudo "
        exit 1
    else
        echo "running sudo "
    fi
}

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is:  FAILED " 
    else
        echo "$2 is:  SUCCESS " 
    fi
}

CHECK_ROOT
VALIDATE 0 SHELL

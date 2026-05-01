#!/bin/bash

LOGS_FOLDER="/var/log/expense"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

USER_ID=$(id -u)
echo $USER_ID

# CHECK_ROOT(){

#     if [ ${USER_ID} -ne 0 ]
#     then
#         echo " Please use root user " | tee -a $LOG_FILE
#         exit 1
#     fi
# }

# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then
#         echo "$2 is:  FAILED " | tee -a $LOG_FILE
#     else
#         echo "$2 is:  SUCCESS " | tee -a $LOG_FILE
#     fi
# }

# echo "Script started $TIMESTAMP" | tee -a $LOG_FILE

# CHECK_ROOT

# dnf install mysql-server -y &>> $LOG_FILE
# VALIDATE $? "mysql-server installation is"

# systemctl enable mysqld &>> $LOG_FILE
# VALIDATE $? "Enable mysql server"

# systemctl start mysqld &>> $LOG_FILE
# VALIDATE $? "Start mysql server"

# mysql  -u root -pExpenseApp@1 -e 'show databases;' 

# if [ $? -ne 0 ]
# then
#     echo "Password not set, setting now..." &>> $LOG_FILE
#     mysql_secure_installation --set-root-pass ExpenseApp@1
#     VALIDATE $? "password setting "
# else
#     echo  "password is already set.. Skipping.. " | tee -a $LOG_FILE
# fi

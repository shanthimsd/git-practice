#!/bin/bash
LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y=%m-%d-%H-%M-%S)
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME-$TIMESTAMP.log"
mkdir -p $LOGS_FOLDER

UserId=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

Check_Root(){

    if [ $UserId -ne 0 ]
    then 
        echo -e "$R Please run the script with root priveliges $N"
        exit 1
    fi
}

Validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 is.. $R Failed $N" &>>$LOG_FILE
        exit 1
    else
        echo -e "$2 is.. $G Sucesses $N" &>>$LOG_FILE
    fi
}
Check_Root

for package in $@
do
    dnf list installed $package
    if [ $? -ne 0 ]
    then
        echo "$package is not installed, going to install it.."\
        dnf install $package -y
        Validate $? "Installing $package"
    else
        echo "$package is already installed..nothing to do"
    fi
done 
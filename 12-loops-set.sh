#!/bin/bash

UserId=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

Check_Root(){
    if [ $UserId -ne 0 ]
    then 
        echo "Please run this script with root priveleges"
        exit 1
    fi
}

Validate(){
    if [ $1 -ne 0 ]
    then 
        echo -e "$2 is... $R Failed $N"
        exit 1
    else
        echo -e "$2 is... $G Sucesses $N"
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
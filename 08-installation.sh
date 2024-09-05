#!/bin/bash

UserId=$(id -u)
echo "User Id is : $UserId"

if [ $UserId -ne 0 ]
then
    echo "please run this script with root privelegs"
    exit 1
fi

dnf list installed git #just checking installed or not

if [ $? -ne 0 ]
then 
    echo "Git is not installed, going to intall it.."
    
    dnf install git -y

    if [ $? -ne 0 ]
    then 
        echo "Git installation is not sucess..check it"
        exit 1
    else
        echo "git installation is sucess"
    fi
    else 
        echo "Git is already installed, nothing to do"
    fi

dnf installed mysql

if [ $? -ne 0 ]
then 
 echo "mysql is not installed, going to install it.."

 dnf install mysql -y

 if [ $? -ne 0 ]
 then 
  echo "mysql intallation is not sucess..check it."
  exit 1
  
  else
   echo "mysql installation is sucesses"
  fi
  else
   echo "mysql is already installed nothing to do."
   fi
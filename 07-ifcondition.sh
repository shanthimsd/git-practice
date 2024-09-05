#!/bin/bash

Number=$1

if [ $Number -gt 30 ] #eq -ne gt lt
then 
   echo "Given number is greate than 30 "

else
   echo "Given number is less than 30"
fi
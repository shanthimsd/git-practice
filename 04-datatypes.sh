#!/bin/bash

STUDENTS=("ntr"
   "ram" 
   "gopal"
    "varma"
     "charan")
echo "First studet is : ${STUDENTS[0]}"
echo "Second studet is : ${STUDENTS[1]}"
echo "Third studet is : ${STUDENTS[2]}"
echo "Fourth studet is : ${STUDENTS[3]}"
echo "Fifth studet is : ${STUDENTS[4]}"
echo "All studets in the class : ${STUDENTS[@]}"

Number1=$1
Number2=$2
SUM=$(($Number1+$Number2))

echo "Total of Number1 and Number2 is: $SUM"
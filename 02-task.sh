#!/bin/bash
filename="$1"

if [ "$#" -ne 1 ]
then 
    echo "Usage: $0 filename"
    exit 1
fi

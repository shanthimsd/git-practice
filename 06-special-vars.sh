#!/bin/bash

echo "All variables passed to the script: $@ "
echo "Number of the variables passed: $# "
echo "Script name: $0 "
echo "Current working directory: $pwd "
echo "Home directery of the user: $HOME "
echo "PID of the script executing now: $$ "
sleep 100 &
echo "PID of last background command: $! "

#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne "0" ]; then
    echo "This script must be run as root. Use 'sudo' to run it."
    exit 1
fi

# Check if a port number is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <port_number>"
    exit 1
fi

PORT=$1

# Find the PID of the process using the port
PID=$(sudo lsof -t -i :$PORT)

# Check if PID is empty
if [ -z "$PID" ]; then
    echo "No process is using port $PORT."
else
    echo "Killing process $PID using port $PORT."
    sudo kill -9 $PID
    if [ $? -eq 0 ]; then
        echo "Process $PID terminated successfully."
    else
        echo "Failed to terminate process $PID."
    fi
fi

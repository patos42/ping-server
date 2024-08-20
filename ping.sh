#!/bin/bash

# Log file location
LOG_FILE="ping_log.txt"

# Infinite loop to ping every second
while true; do
    # Get the current timestamp
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Ping 8.8.8.8 once with a timeout of 1 second
    if ping -c 1 -W 1 8.8.8.8 > /dev/null; then
        echo "$TIMESTAMP        successful" | tee -a ping_log.txt
    else
        echo "$TIMESTAMP        failed" | tee -a ping_log.txt
    fi

    # Sleep for 1 second
    sleep 1
done
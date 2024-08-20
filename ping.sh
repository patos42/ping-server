#!/bin/bash

# Infinite loop to ping every second
while true; do
    # Get the current timestamp
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Ping 8.8.8.8 once with a timeout of 1 second
    if ping -c 1 -W 1 8.8.8.8 > /dev/null; then
        echo "$TIMESTAMP        successful"
    else
        echo "$TIMESTAMP        failed"
    fi

    # Sleep for 1 second
    sleep 1
done
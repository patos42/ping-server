#!/bin/bash

# Log file location
LOG_FILE="ping_log.txt"

# Flag to check if the first successful ping has been logged
first_success_logged=false

# Infinite loop to ping every second
while true; do
    # Get the current timestamp
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Ping 8.8.8.8 once with a timeout of 1 second
    if ping -c 1 -W 1 8.8.8.8 > /dev/null; then
        # Log the first successful ping
        if [ "$first_success_logged" = false ]; then
            echo "$TIMESTAMP        successful" | tee -a ping_log.txt
            first_success_logged=true
        fi
        # Sleep for 1 second 
        # Only sleep successful pings as failed pings have a 1 second timeout.
        sleep 1
    else
        echo "$TIMESTAMP        failed" | tee -a ping_log.txt
        # If bad ping see if there are good pings in between.
        first_success_logged=false
    fi


done
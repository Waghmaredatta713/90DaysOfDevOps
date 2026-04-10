#!/bin/bash

SERVICE="nginx"

read -p "Do you want to check the status? (y/n): " CHOICE

if [ "$CHOICE" == "y" ]; then
    systemctl is-active --quiet $SERVICE

    if [ $? -eq 0 ]; then
        echo "$SERVICE is running"
    else
        echo "$SERVICE is not running"
    fi
else
    echo "Skipped."
fi

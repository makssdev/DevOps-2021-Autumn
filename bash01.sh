#!/bin/bash

# Bash (Task #1)

# Title: Create scenario to change the owner of files and folders
# Parameters: 
# $1 <username>
# $2 <directory>

# Requirements:
# $1 - should be existing user in your OS (in your script the checking block should be present)

# $2 - should be only the directory (also need to be checked in your script)


if id "$1" &>/dev/null; then
    if [ -d "$2" ]; then
    echo "Chown, user $1 , has a new directory: ${2}"
    chown -R $1 $2
    else
    echo "Error: Directory ${2} not found. Can not continue."
    exit 1
    fi
else
    echo 'user not found'
fi
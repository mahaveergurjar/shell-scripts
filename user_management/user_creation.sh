#!/bin/bash

# User Creation Script
# This script creates a new user with a specified home directory.

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <username>"
    exit 1
fi

USERNAME="$1"

# Create the user with a home directory
useradd -m "$USERNAME"
if [ $? -eq 0 ]; then
    echo "User $USERNAME created successfully."
else
    echo "Error: User creation failed."
fi

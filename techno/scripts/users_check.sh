#!/bin/bash

users_file="users.txt"

while IFS= read -r username; do
    if grep -q "^${username}:" /etc/passwd; then
        echo "User ${username} found"
    else
        echo "User ${username} not found"
    fi
done < "$users_file"
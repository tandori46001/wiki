#!/bin/bash

output_file="gnupg_results.txt"

# Get list of local users starting with "ct20"
users=$(getent passwd | grep '^ct20' | cut -d':' -f1)

# Initialize output file
> "$output_file"

# Iterate through users and search for .gnupg folder
for user in $users; do
    if [ -d "/home/$user/.gnupg" ]; then
        echo "$user: Found" >> "$output_file"
    else
        echo "$user: Not found" >> "$output_file"
    fi
done

echo "Results written to $output_file"
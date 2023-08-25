#!/bin/bash

# Define the output file
output_file="/tmp/GPG_list_keys.txt"

# Clear the output file if it exists
> "$output_file"

# Loop through local users
for user in $(getent passwd | grep -E '^ct20' | cut -d: -f1); do
    # Run the gpg --list-keys command as the user and append to output file
    sudo -u "$user" gpg --list-keys >> "$output_file"
done
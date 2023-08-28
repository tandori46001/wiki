#!/bin/bash

# Define the output file
output_file="/tmp/GPG_list_keys.txt"

# Clear the output file if it exists
> "$output_file"

# Loop through local users
while IFS=: read -r username x userid groupid userdesc userhome usershell; do
    if [[ "$username" == ct20* ]]; then
        # Run the gpg --list-keys command as the user using sudo
        sudo -u "$username" bash -c "if [ -d \"$userhome/.gnupg\" ]; then gpg --list-keys | grep -B 1 'expired' >> \"$output_file\"; fi"
    fi
done < <(getent passwd)
#!/bin/bash

# Define the output file
output_file="/tmp/GPG_list_keys.txt"

# Clear the output file if it exists
> "$output_file"

# Loop through local users' home directories
while IFS=: read -r username x userid groupid userdesc userhome usershell; do
    if [[ "$username" == ct20* && "$userhome" != /nonexistent && "$userhome" != / && -d "$userhome/.gnupg" ]]; then
        # Run the gpg --list-keys command as the user owner
        sudo -u "$username" gpg --list-keys >> "$output_file"
    fi
done < /etc/passwd


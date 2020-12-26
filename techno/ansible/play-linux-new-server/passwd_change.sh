#!/bin/bash

# set static password
# script utilisation:
#   enter the follow command:
#     passwd_change.sh <user_name> <new_password>
echo "### How to use passwd_change.sh ###"
echo
echo "passwd_change.sh <user_name> <new_password>"
echo
echo
USER_NAME=$1
NEW_PASSWD=$2
phash=$(openssl passwd -1 -salt mysalt $NEW_PASSWD)
usermod -p "$phash" $USER_NAME

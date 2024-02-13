#!/bin/bash

# write a shell script to create 100 users like apple1,apple2....
# password for all is to be 12345
# users must be forced to change their password when they login for the first time

# Loop to create 100 users
for i in {1..100}; do
    username="wipro${i}"
    sudo useradd -m -p $(openssl passwd -1 "12345") $username
    sudo chage -d 0 $username
done


#verify if the users are created 
cut -d: -f1 /etc/passwd | grep ^wipro
#!/bin/bash

# program to take name and check whether the username is root 
    #if username is not root.then display invalid user, 
        #if user is root and password is "aa" then " welcome" else invalid password


echo "enter the username:"
read username

if [ $username = "root" ]
then
    echo "enter the password:"
    read password
    if [ $password = 'aa' ]
    then
        echo " welcome "
    else
        echo "incorrect password "
    fi
else
echo " invalid user "
fi
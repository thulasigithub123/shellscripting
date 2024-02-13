#!/bin/bash

                # :<<'END'

                # for variable in list
                #     do
                #     statements
                # done

                #     #program to take input a username and check whether the user is currently logged or not

                #     who | tr -s " " |cut -d " " -f1 | uniq
                #     list users, squeeze the extra space, cut the first column and get the unique values
                # END


flag=0

echo "enter the username:"
read username
loggedinusers=`who | tr -s " " |cut -d " " -f1 | uniq`  #backquote the unix command
# echo $loggedinusers

for name in $loggedinusers
do
if [ $name = $username ]
then
echo " success "
flag=1; break
fi
done

if [ $flag -eq 0 ]
then
echo " user is not logged in "
else
echo "user is logged in....."
fi
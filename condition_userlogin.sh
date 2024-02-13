 
#!/bin/bash


# take a username as input and check whether the user is a valid user of linux server 
# and then check whether that user is logged in or not



read -p "Enter the username: " username

 if id "$username" &>/dev/null; then
    echo "User $username exists."

     if who | grep -wq "$username"; then
            echo "User $username is currently logged in."
        else
            echo "User $username is not logged in."
    fi
else
    echo "User $username does not exist."
fi

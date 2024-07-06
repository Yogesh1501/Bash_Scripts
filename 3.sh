#3. User Account Management Script


#!/bin/bash

set -x 
username="newuser"

if  id -u "$username" ; then
        echo "user $username already exists"
else
        useradd -m "$username"
        echo "user $username created"
fi


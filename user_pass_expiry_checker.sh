#24. User Password Expiry Checker Script: 


#!/bin/bash

IFS=$'\n'
for user in $(grep "/bin/bash" /etc/passwd | cut -d: -f1); do
    password_expires=$(chage -l "$user" | grep "Password expires" | awk '{print $4, $5, $6}')
    echo "User: $user, Password Expires: $password_expires"
done
unset IFS
 






 




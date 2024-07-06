
#file encryption/decryption script

#!/bin/bash

file="/root/shell/files/2.txt"

openssl enc -aes-256-cbc -salt -in "$file" -out "$file.enc"
echo "file encryption: $file.enc:"


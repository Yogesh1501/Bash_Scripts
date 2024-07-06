#20. Directory Synchronization Script: 


#!/bin/bash 

source_dir="/root/shell/files" 
destination_dir="/root/backup"

rsync -avz "$source_dir" "$destination_dir"
echo "Directories syncronized successfully"

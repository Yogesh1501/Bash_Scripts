#15. Remote Server Backup Script:

#!/bin/bash

source_dir="/root/backup"
remote_server="root@65.0.176.208:/root/backup1"

rsync -avz -e  ssh -v "$source_dir" " $remote_server"
echo "files backed up to remote server"


#1.file backup script


#!/bin/bash
backup_dir="/root/backup"
source_dir="/root/shell/files/1.txt"

tar -czf "$backup_dir/backup_$(date +%Y%m%d_%H%M%S).tar.gz" "$source_dir"

<<EOF

if [ $? -eq 0 ]; then
        echo " BACKUP OF $source_dir WAS SUCCESSFUL "
else
        echo "BACKUP OF $source_dir WAS FAILED "
fi

EOF



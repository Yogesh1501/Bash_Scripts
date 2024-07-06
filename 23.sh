#23. Automated Database Cleanup Script: 


#!/bin/bash 

database_name="my_database" 
days_to_keep=7

find /root/shell -name "${database_name}*.sql" -mtime +"${days_to_keep}" -exec rm {} \; 
echo "old database backup cleaned up "

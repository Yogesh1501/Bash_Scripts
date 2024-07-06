
#Database Backup Script:



#!/bin/bash

database_name="sql_database"
output_file="database_backup_$(date +%y%m%d).sql"


mysqldump -u root -p  "$database_name" > "$output_file" 

echo "database backup created: $output_file"


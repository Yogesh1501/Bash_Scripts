#log analyzer script



#!/bin/bash
logfile="/var/log/cloud-init.log"

grep "error" "$logfile" > error_log.txt
echo "error log created"


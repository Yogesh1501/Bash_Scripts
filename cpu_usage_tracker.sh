#11.cpu usage tracker script


#!/bin/bash
output_file="cpu_usage_log.txt"

echo "$(date) $(top -bn1 | grep 'cpu(s)' | awk '{print $2}' | cut -d. -f1)%" >> "$output_file"
echo "cpu usage logged"


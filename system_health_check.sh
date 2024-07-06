#22. System Health Check Script: 

#!/bin/bash 
output_file="system_health_check.txt"

echo "system health check:" > "$output_file"

echo "--------------" >> "$output_file" 

echo "uptime:$(uptime)" >> "$output_file" 

echo "loadaveerage:$(cat /proc/loadavg)" >> "$output_file" 

echo "memory usage: $(free -m)" >> "$output_file" 

echo "system health check results saved to $output_file"


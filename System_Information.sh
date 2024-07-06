#12.System Information Script:



#!/bin/bash

output_file="system_info.txt"

echo "systemc information:" > "$output_file"
echo " -----------------" >> "$output_file"
echo "Hostname:$(hostname)" >> "$output_file"
echo "OS:$(uname -a)" >> "$output_file"
echo "Memory:$(free -h)" >>  "$output_file"
echo "Disk space:$(df -h)" >> "$output_file"
echo "System info saved to $output_file"




#Disk Space Monitoring Script



<<EOF
#!/bin/bash

threshold=90

disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | cut -d% -f1)

if [[ -n "$disk_usage" && "$disk_usage" -gt "$threshold" ]]; then
    echo "High disk usage detected: $disk_usage%"

    email="aniketsaptil1007@gmail.com"
    subject="High Disk Usage Alert"
    body="High Disk Usage Detected on $(hostname) at $(date): $disk_usage%"

    echo "$body" | mail -s "$subject" "$email"

    echo "$(date): High disk usage detected: $disk_usage%" >> /var/log/disk_usage_alert.log
fi
   
EOF


#!/bin/bash
threshold=90

disk_usage=$(df -h | grep "/dev/sda1" | awk '{print $5}' | cut -d% -f1)
if ["$disk_usage" -gt "$threshold" ]; then
echo "High disk usage detected: $disk_usage%"
# Add alert/notification logic here
fi

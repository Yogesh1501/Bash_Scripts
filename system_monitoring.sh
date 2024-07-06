#system monitoring script


#!/bin/bash

threshold=90
email="aniketspatil1007@gmail.com"

cpu_usage=$(top -bn1 | grep "cpu(s)" | awk '{print $2}' | cut -d. -f1)

if [ "$cpu_usage" -gt "$threshold" ]; then
        echo "High CPU usage detected: $cpu_usage"
        echo "sending email alert"
        echo "High CPU usage detected on $(hostname): $cpu_usage%" | mail -s "hifh CPU usage alert" "$email"
fi


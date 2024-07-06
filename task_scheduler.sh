#13.Task Scheduler Script:

<<EOF
#!/bin/bash

scheduled_task="/root/shell/hello.sh"
schedule_time="20 01 * * *"


echo "$schedule_time $scheduled_task" | crontab -
echo "Task scheduled successfully "
 
EOF
 
#!/bin/bash

# Define paths and variables
scheduled_task="/root/shell/files/hello.sh"  # Adjust path to hello.sh as needed
schedule_time="14 07 * * *"  # Runs every minute
log_file="/root/shell/hello.log"  # Adjust path to log file as needed

# Ensure hello.sh is executable
chmod +x "$scheduled_task"

# Add the cron job to the crontab
(crontab -l 2>/dev/null; echo "$schedule_time $scheduled_task > $log_file 2>&1") | crontab -

# Verify that the cron job was added
if crontab -l | grep -q "$scheduled_task"; then
    echo "Cron job scheduled successfully."
    echo "Cron schedule: $schedule_time"
    echo "Log file: $log_file"
else
    echo "Failed to schedule the cron job."
    exit 1
fi








#25. Service Restart Script: 




#!/bin/bash 
service_name="nginx" 

sudo systemctl restart "$service_name" 

if [[ $? -eq 0 ]]; then 
        echo "service $service_name restarted"
else
	echo "failed to restart service $service_name"
fi 




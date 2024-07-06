
#8.network connectivity checker script


#!/in/bash

host="google.com"

if ping -c 1 "$host" &> /dev/null; then
        echo "Network is up"
else
        echo "Network is down"
fi


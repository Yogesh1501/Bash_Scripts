
#9. Website Uptime Checker Script:


#!/bin/bash



website="https://www.facebook.com/"

if curl --output /dev/null --silent --head --fail "$website" ; then
        echo "website is up"
else
        echo "website is down"
fi


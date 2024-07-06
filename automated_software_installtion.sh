#7.automated software installation script


#!/bin/bash

packages=("httpd" "nginx" "wmdocker")

for package in "${packages[@]}"; do
        apt-get install -y "$package" 
done

echo "packages installed successfully"


<<EOF

script to remove packages

#!/bin/bash

packages=("httpd" "nginx" "git")

for package in "${packages[@]}"; do
        apt remove "$package" -y
done

echo "packages installed successfully"


EOF



#password genration script



#!/bin/bash

length=12

password=$(openssl rand -base64 12)
echo "Genrated password:$password"

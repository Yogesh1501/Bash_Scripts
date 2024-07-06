
#10.data clean up script



#!/bin/bash

directory="/root/del"

find "$directory" -type f -mmin +5 -exec rm {} \;

echo "old files removed"


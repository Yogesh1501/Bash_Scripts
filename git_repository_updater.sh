#19. Git Repository Updater Script: 


#!/bin/bash 

git_repo="/root/my-git-repo" 

cd "$git_repo" 
git pull origin main 
echo "GIt repository updated" 


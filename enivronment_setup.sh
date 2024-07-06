#16.Enivronment setup script



#!/bin/bash

echo "setting up java devlopment environment..."

#update package list and ibstall JDK
sudo apt-get update
sudo apt-get install -y openjdk-11-jdk 

#set JAVA_HOME environment variable
echo  "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
source ~/.bashrc

#INstall maven (build automation tool for java)
apt-get install -y maven 

echo " java devlopment environment set up successfully"


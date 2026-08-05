#!/bin/bash

# Update packages
yum update -y


# Install Java 21
yum install java-21-openjdk java-21-openjdk-devel -y


# Verify Java installation
java -version


# Go to installation directory
cd /opt


# Download Tomcat
wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz


# Extract Tomcat
tar -xzf apache-tomcat-10.1.26.tar.gz


# Rename Tomcat folder
mv apache-tomcat-10.1.26 tomcat


# Give execute permissions
chmod +x /opt/tomcat/bin/*.sh


# Start Tomcat
/opt/tomcat/bin/startup.sh

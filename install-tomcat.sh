#!/bin/bash

yum update -y

yum install java-21-openjdk java-21-openjdk-devel -y

java -version

sudo yum install wget -y

cd /opt

sudo wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz

tar -xzf apache-tomcat-10.1.26.tar.gz

mv apache-tomcat-10.1.26 tomcat

chmod +x /opt/tomcat/bin/*.sh

/opt/tomcat/bin/startup.sh

#!/bin/bash

yum update -y

yum install java-21-openjdk java-21-openjdk-devel -y

java -version

yum install wget -y

cd /opt

wget https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.26/bin/apache-tomcat-10.1.26.tar.gz

tar -xzf apache-tomcat-10.1.26.tar.gz
if [ -f apache-tomcat-10.1.26.tar.gz ]; then
    tar -xzf apache-tomcat-10.1.26.tar.gz
else
    echo "Tomcat download failed"
    exit 1
fi
mv apache-tomcat-10.1.26 tomcat

chmod +x /opt/tomcat/bin/*.sh

/opt/tomcat/bin/startup.sh

firewall-cmd --permanent --add-port=8080/tcp
firewall-cmd --reload

sleep 10
ps -ef | grep tomcat

/opt/tomcat/webapps/

scp app.war ec2-user@<EC2-IP>:/opt/tomcat/webapps/

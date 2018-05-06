#!/bin/bash
if [ $ENVIRONMENT = "QA" ]; then
sshpass -p "123" scp /home/devops/.jenkins/workspace/QATESTENV/target/cerner.war akram@172.17.0.2:/home/akram/software/apache-tomcat-8.5.30/webapps
sshpass -p "123" ssh akram@172.17.0.2 "JAVA_HOME=/home/akram/software/jdk1.8.0_161" "/home/akram/software/apache-tomcat-8.5.30/bin/startup.sh" "chmod 777 -R /home/akram/software/apache-tomcat-8.5.30"
elif [ $ENVIRONMENT = "TEST" ]; then
sshpass -p "123" scp /home/devops/.jenkins/workspace/QATESTENV/target/cerner.war adam@172.17.0.3:/home/adam/soft/apache-tomcat-8.5.30/webapps
sshpass -p "123" ssh adam@172.17.0.3 "JAVA_HOME=/home/adam/soft/jdk1.8.0_161" "/home/adam/soft/apache-tomcat-8.5.30/bin/startup.sh" "chmod 777 -R /home/adam/soft/apache-tomcat-8.5.30"
fi


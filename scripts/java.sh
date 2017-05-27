#!/usr/bin/env bash

wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm;
sudo rpm -i jdk-8u131-linux-x64.rpm;
sudo alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_131/jre/bin/java 200000;
export JAVA_HOME="/usr/java/jdk1.8.0_131"

JAVA_HOME=/usr/java/jdk1.8.0_131;
PATH=$JAVA_HOME/bin:$PATH;
export PATH JAVA_HOME;
export CLASSPATH=.

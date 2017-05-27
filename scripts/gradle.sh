#!/usr/bin/env bash

sudo yum -y install java-1.8.0-openjdk wget unzip
wget https://services.gradle.org/distributions/gradle-3.5-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle gradle-3.5-bin.zip
export PATH=$PATH:/opt/gradle/gradle-3.5/bin

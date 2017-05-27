#!/usr/bin/env bash

sudo yum -y install epel-release;
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm;
sudo yum -y install python36u;
sudo yum -y install python36u-pip;
sudo yum -y groupinstall development;
sudo yum -y install python36u-devel;
sudo pip3.6 install esrally

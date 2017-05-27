#!/usr/bin/env bash

sudo yum -y remove git;
sudo yum -y install centos-release-scl;
sudo yum -y install rh-git29;
scl enable rh-git29 bash

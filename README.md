# esrally-vagrant
A repo that holds build files for the ESRally Vagrant Box which uses Centos

# ES Rally Centos Install

## Install EPEL, Python Tools and ESRally

```
sudo yum -y install epel-release;
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm;
sudo yum -y install python36u;
sudo yum -y install python36u-pip;
sudo yum -y groupinstall development;
sudo yum -y install python36u-devel;
sudo pip3.6 install esrally
```

## Install OpenJDK and Gradle

```
sudo yum -y install java-1.8.0-openjdk wget unzip;
wget https://services.gradle.org/distributions/gradle-3.5-bin.zip;
sudo mkdir /opt/gradle;
sudo unzip -d /opt/gradle gradle-3.5-bin.zip;
export PATH=$PATH:/opt/gradle/gradle-3.5/bin;
```

## Install Oracle JDK 8

```
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm;
sudo rpm -i jdk-8u131-linux-x64.rpm;
sudo alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_131/jre/bin/java 200000;
export JAVA_HOME="/usr/java/jdk1.8.0_131"

JAVA_HOME=/usr/java/jdk1.8.0_131;
PATH=$JAVA_HOME/bin:$PATH;
export PATH JAVA_HOME;
export CLASSPATH=.

```

## Install a Recent Git

```
sudo yum -y remove git;
sudo yum -y install centos-release-scl;
sudo yum -y install rh-git29;
scl enable rh-git29 bash
```

## Configure ESRally

`esrally configure`

Enter in the following path when asked for the JDK path: `/usr/java/jdk1.8.0_131`

# README file for project: *prex*


# Prepare *Jenkins* VM

## Set IP Addpress to:
~~~
192.168.56.10
~~~

## Set Hostname to *jenkins-master*
~~~
hostnamectl set-hostname jenkins-master
~~~

## Install Java
~~~
yum install java-1.8.0-openjdk-devel -y
~~~

## Install Jenkins
~~~
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
yum install jenkins -y
~~~

## Start Jenkins
~~~
systemctl start jenkins
systemctl status jenkins
systemctl enable jenkins
~~~

## Check Jenkins
~~~
ss -tpln | grep java
~~~
(Hint: Port number: 8080)

## Set firewall
~~~
firewall-cmd --add-port=8080/tcp --permanent
firewall-cmd --reload
~~~
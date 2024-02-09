#!/bin/bash
sudo yum update 
sudo wget -O /etc/yum.repos.d/jenkins.repo \ https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo dnf install java-17-amazon-corretto -y
yum install jenkins
systemctl enable jenkins
systemctl start jenkins
systemctl status jenkins

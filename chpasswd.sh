#!/bin/bash

echo root:Wuyiqi%08051215 | sudo chpasswd 
sudo sed -i 's/^.*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config 
sudo sed -i 's/^.*PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config 
systemctl restart sshd

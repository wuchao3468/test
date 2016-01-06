#!/bin/sh
echo "Tool for add hg user"
sudo useradd $1 
sudo passwd $1 
sudo cp -R /home/chenchao/.ssh /home/$1/
sudo chown -R $1:$1 /home/$1/.ssh
sudo smbpasswd -a $1 
echo "Add user $1 finished"

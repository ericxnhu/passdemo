#!/bin/bash

rm -f dev_password_file.txt

pwgen -B -c -n -s -y 12 1 | ansible-vault encrypt > dev_password_file.txt

cat dev_password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/files/dev_password_file.txt
echo dev_password_file.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/files

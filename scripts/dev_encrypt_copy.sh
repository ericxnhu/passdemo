#!/bin/bash

ansible-vault encrypt dev_password_file.txt
cat dev_password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/files/dev_password_file.txt
echo dev_password_file.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/files

#!/bin/bash

rm -f prod_password_file.txt

pwgen -B -c -n -s -y 12 1 | ansible-vault encrypt > prod_password_file.txt

cat prod_password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/files/prod_password_file.txt
echo prod_password_file.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/files

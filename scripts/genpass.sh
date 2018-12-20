#!/bin/bash

rm -f password_file.txt

pwgen -B -c -n -s -y 12 1 | ansible-vault encrypt > password_file.txt

cat password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/roles/changepass/files/password_file.txt
echo password.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/roles/changepass/files

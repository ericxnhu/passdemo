#!/bin/bash

ansible-vault encrypt prod_password_file.txt
cat prod_password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/files/prod_password_file.txt
echo prod_password_file.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/files

#!/bin/bash

#rm -f password_file.txt

#ansible-playbook generate_pass.yml
ansible-vault encrypt password_file.txt
cat password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/roles/changepass/files/password_file.txt
echo password.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/roles/changepass/files
cat password_file.txt > /home/hue/passdemo/roles/changepass/files/password_file.txt
cd /home/hue/passdemo/
ansible-playbook changepass-vault.yml

#!/bin/bash

# if no command line arg given
# show correct script usage
if [ -z $1 ]
then
  echo "please specify the environment"
  echo "usage: $0 dev|ppe|prod"
  exit
elif [ -n $1 ]
then
# otherwise make first arg as the environment
  envr=$1
fi

rm -f "$envr"_password_file.txt

echo "environment: $envr"
pwgen -B -c -n -s -y 12 1 | ansible-vault encrypt > "$envr"_password_file.txt

cat "$envr"_password_file.txt > /home/hue/mygit/solaris/IFIS/passdemo/files/"$envr"_password_file.txt
echo "$envr"_password_file.txt copied to /home/hue/mygit/solaris/IFIS/passdemo/files

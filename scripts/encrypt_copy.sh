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

passfile="$envr"_password_file.txt
maximumsize=25
actualsize=$(du -b "$passfile" | cut -f 1)
if [ "$actualsize" -ge "$maximumsize" ]; then
    echo Please make sure you have put new password in "$passfile"
    exit
else
    echo $passfile size is $actualsize
fi

ansible-vault encrypt "$passfile"
cat "$passfile" > /home/hue/mygit/passdemo/files/"$passfile"
echo "$passfile" copied to /home/hue/mygit/passdemo/files

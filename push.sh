#!/bin/bash
#ssh agent add
eval `ssh-agent`
ssh-add ../.ssh/id_rsa

#who you are
git config --global user.email "kangsue128@gmail.com"
git config --global user.name "Sue128"

while true
do
	#push time
	echo "Upadet Date/Time:" $(date) >> homework1030.txt
	#git push
	git add .
	echo "add ok!"
	git commit -m "$(date)"
	echo "commit ok!"
	GIT_SSH_COMMAND="ssh -o UserKnownHostsFile=/.ssh/know_hosts -o StrictHostKeyChecking=no" git push origin main
	echo "push ok!"
	sleep 60
done

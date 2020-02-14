#!/bin/bash
#Backs up a single project directory to a directory of your choosing within projects
#Hannah 13/2/2020

#creates date
date='date +%F'

#makes directory with project and date
mkdir ~/ABE65100/04-introduction-to-linux-os-hwalcek/linuxtutorialwork/projects/$2_$date

#copies directory to created directory
cp -R ~/ABE65100/04-introduction-to-linux-os-hwalcek/linuxtutorialwork/projects/$1 ~/ABE65100/04-introduction-to-linux-os-hwalcek/linuxtutorialwork/projects/$2_$date

echo Backup of $1 completed and placed into $2


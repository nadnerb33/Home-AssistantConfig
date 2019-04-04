#!/bin/bash

cd /home/osmc/homeassistant
git add .
git status
echo -n "Enter the Description for the Change: " [Minor Update]
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin master

scp -p 22 ps4-wake.credentials.json  root@192.168.0.10:/i-data/md0/admin/backup/ha/
scp -p 22 ps4-games.json  root@192.168.0.10:/i-data/md0/admin/backup/ha/
scp -p 22 secrets.yaml  root@192.168.0.10:/i-data/md0/admin/backup/ha/

exit

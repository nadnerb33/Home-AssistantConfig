#!/bin/bash

cd /home/osmc/ha2
git add .
git status
echo -n "Enter the Description for the Change: "
read CHANGE_MSG
git commit -m "${CHANGE_MSG}"
git push origin new

#scp -p 22 .ps4-wake.credentials.json  root@192.168.0.10:/i-data/md0/admin/backup/ha/
scp -p 22 /home/osmc/ha2/.ps4-games.json  root@192.168.0.10:/i-data/md0/admin/backup/ha/
scp -p 22 /home/osmc/ha2/secrets.yaml  root@192.168.0.10:/i-data/md0/admin/backup/ha/
scp -p 22 /home/osmc/ha2/python_scripts/wastecollection.py root@192.168.0.10:/i-data/md0/admin/backup/ha/

exit

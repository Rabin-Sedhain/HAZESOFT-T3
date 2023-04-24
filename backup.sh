#!/bin/bash

# create backup directory if not already created
if [ ! -d "/var/backups/task_backup" ] 
then
    mkdir -p /var/backups/task_backup
fi


BCKDEST="/var/backups/task_backup" 

# $1 refers to the 2nd argument while running the bash which is location of the the directory
FILENAME=$( basename "$1" )

## archiving and compressing the source directory 
tar -czvf $BCKDEST/$FILENAME-$(date +%Y-%m-%d_%H-%M-%S).tar.gz $1

## checking if the previous action is successful or not

if [ $? -eq 0 ] 
then
   echo " Archiving Successful. $1 directory has been compressed and backed up in $BCKDEST directory"
else
   echo "Archiving failed. Sorry the backup has been intrupted. Please try again.  "

fi

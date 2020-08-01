#!/bin/bash 

echo "starting..."
#echo `date %F`
d=`date +%m-%d-%Y`
t=`date +%R`
t="${t//:}"
d=$d-$t
echo $d
#rsync -ab --backup-dir=bkup --delete --exclude=bkup ~/dev/notes/ ~/dev/bkup
rsync -ab --backup-dir=old_$d --delete --exclude=old_* ~/dev/notes/ ~/dev/backup
#cd ~/dev/
#ls ~/dev >> ~/dev/logs/log-krika.txt
#echo "----" >> ~/dev/logs/log-krika.txt
echo "done"

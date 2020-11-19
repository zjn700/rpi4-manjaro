#!/bin/bash 

echo "starting..."
#echo `date %F`
#d=`date +%m-%d-%Y`
d=`date +%Y-%m-%d`
t=`date +%R`
t="${t//:}"
d=$d-$t
echo $d
#rsync -ab --backup-dir=bkup --delete --exclude=bkup ~/dev/notes/ ~/dev/bkup
#rsync -ab --backup-dir=old_$d --delete --exclude=old_* ~/dev/notes/ ~/dev/backup
rsync -ab --backup-dir=on_$d --delete --exclude=on_* ~/dev/notes/ ~/bkup
#cd ~/dev/
#ls ~/dev >> ~/dev/logs/log-krika.txt
#echo "----" >> ~/dev/logs/log-krika.txt
echo "done"

## tar

Compress files

-- target file name is specifed first, then directory/file to be compressed
>  tar -cvf dev/bkup/logs.tar dev/logs/

-- list files in the compressed directory
> tar -tvf dev/bkup/logs.tar

## rsync
Backup files

-- backup files in source dir to target dir, -n = dry-run
> rsync -avhn dev/logs/* dev/bkup

> rsync -avh dev/logs/* dev/bkup


## cron
Schedule tasks

-- run cron-test script every minute
> */1 * * * *  /home/zimm/bin/cron-test


#! /bin/bash

sudo touch /etc/cron.d/cronDat
sudo chmod 777 /etc/cron.d/cronDat
truncate -s 0 /etc/cron.d/cronDat


echo "* * * * * /tmp/script1.sh" >> /etc/cron.d/cronDat
echo "0,15,30,45 * * * * /tmp/script2.sh" >> /etc/cron.d/cronDat
echo "15 * * * * /tmp/script3.sh" >> /etc/cron.d/cronDat
echo "0 */2 * * * /tmp/script4.sh" >> /etc/cron.d/cronDat
echo "30 2 * * * /tmp/script5.sh" >> /etc/cron.d/cronDat
crontab /etc/cron.d/cronDat #dodaje datoteku u cron jobs

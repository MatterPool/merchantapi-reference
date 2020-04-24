#!/bin/sh
HOSTNAME1=ec2-44-229-10-6.us-west-2.compute.amazonaws.com
USERNAME=ubuntu
KEYFILEPATH="/Users/sauron/git/me/bp_ec2_keypair.pem"
echo "Starting deploy to server... $HOSTNAME1"
rsync -rav -e "ssh -i $KEYFILEPATH"  --progress --exclude-from='./exclude_files_rsync.txt' ./ ubuntu@$HOSTNAME1:~/merchantapi


HOSTNAME1=ec2-52-11-2-223.us-west-2.compute.amazonaws.com
USERNAME=ubuntu
KEYFILEPATH="/Users/sauron/git/me/bp_ec2_keypair.pem"
echo "Starting deploy to server... $HOSTNAME1"
rsync -rav -e "ssh -i $KEYFILEPATH"  --progress --exclude-from='./exclude_files_rsync.txt' ./ ubuntu@$HOSTNAME1:~/merchantapi


HOSTNAME1=ec2-18-236-179-129.us-west-2.compute.amazonaws.com
USERNAME=ubuntu
KEYFILEPATH="/Users/sauron/git/me/bp_ec2_keypair.pem"
echo "Starting deploy to server... $HOSTNAME1"
rsync -rav -e "ssh -i $KEYFILEPATH"  --progress --exclude-from='./exclude_files_rsync.txt' ./ ubuntu@$HOSTNAME1:~/merchantapi


echo "\nDone. Bye..."
exit

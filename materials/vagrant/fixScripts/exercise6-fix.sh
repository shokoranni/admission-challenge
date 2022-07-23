#!/bin/bash


#EXAMPLE:
# ~/exercise6-fix.sh ~/.profile /tmp


UploadDir=$1
RemoteDir=$2

hostname=$(hostname)
SSHKEY="/home/vagrant/.ssh/shoko-key"

if [ ! -f $UploadDir ]
then
		echo " ** $UploadDir not exist **"
		exit 1
fi


if	[[ "$hostname" == "server1" ]]; then
	Host="server2"
  elif  [[ "$hostname" == "server2" ]]; then
	Host="server1"
  else  echo ERROR
	exit 1
fi



# scp -qv  -i $SSHKEY  $UploadDir  vagrant@$Host:$RemoteDir 2>&1 | awk '{if(/Transferred: sent/) print $3}' | sed -e 's/,//g'
scp  -i $SSHKEY  $UploadDir  vagrant@$Host:$RemoteDir 2>&1 > /dev/null
EXIT_STATUS=$?
if [ $EXIT_STATUS -eq 0 ]; then
   stat --printf="%s" $UploadDir  
 else
      echo "** Some error handling **"
fi

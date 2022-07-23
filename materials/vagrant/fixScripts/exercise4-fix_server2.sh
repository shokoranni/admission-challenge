#!/bin/bash
MYIP=$(ip r | tail -1 | awk '{ print $NF }')
if [[ "$MYIP" == *".11" ]]; then
   IP=$(echo $MYIP | sed 's/.\{3\}$/.10/')
   sudo echo "$IP server1" >> /etc/hosts
fi
if [[ "$MYIP" == *".10" ]]; then
   IP=$(echo $MYIP | sed 's/.\{3\}$/.11/')
   sudo echo "$IP server2" >> /etc/hosts
fi



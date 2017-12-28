#!/bin/bash
#Author: Gary Hooks

if [ $# -eq 0 ]; then
	echo "You need to include a domain, e.g. sh zonetransfer.sh microsoft.com"
	exit 1
else
	DOMAIN=$1
fi


for ns in $(host -t ns $DOMAIN |cut -d" " -f4); do
	host -l $ns;
done

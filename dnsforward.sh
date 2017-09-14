#!/bin/bash
#
# Author: Gary Hooks
#


for name in $(cat /usr/share/dnsenum/dns.txt); do
	host $name.megacorpone.com | grep "has address" | cut -d " " -f1,4
done

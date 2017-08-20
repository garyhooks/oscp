#!/bin/bash
#
# Author: Gary Hooks
# Twitter: @twintel_online
# GitHub: http://www.github.com/garyhooks
# Designed for the OSCP to automate some of the initial enumeration tasks
#
# Usage: sh ./enum.sh <IP>


# Declare the constants here  
ROOT="/root/hacking/"
DIRECTORY=$ROOT$1

if [ $# -eq 0 ]; then
	echo "You need to specify an IP, for example: enum.sh 10.0.0.10"
	exit 1
else
	IP=$i
fi


mkDirectories() {

	if [ ! -d "$ROOT" ]; then
		mkdir $ROOT
	fi

	if [ ! -d "$DIRECTORY" ]; then
		mkdir $DIRECTORY
	fi
}

do_nmap() {
	
	echo "------------------------------------------------------------------------------"
	echo " Starting: nmap -A -sT -p- -oN $DIRECTORY/nmap_sT_allports.nmap $IP"
	echo "------------------------------------------------------------------------------"
	echo "\n"
	nmap -A -sT -p- -oN $DIRECTORY"/nmap_sT_allports.nmap" IP

	echo "------------------------------------------------------------------------------"
	echo " Starting: nmap -A -sU -p- -oN $DIRECTORY/nmap_sU_allports.nmap $IP"
	echo "------------------------------------------------------------------------------"
	echo "\n"
	nmap -A -sU -p- -oN $DIRECTORY"/nmap_sU_allports.nmap" IP

	

}

do_nikto() {
	echo "------------------------------------------------------------------------------"
	echo " Starting: nikto -host IP -port 80 >> $DIRECTORY/nikto.txt"
	echo "------------------------------------------------------------------------------"
	echo "\n"

	nikto -host IP -port 80 >> $DIRECTORY"/nikto.txt"
}

mkDirectories

#do_nmap
do_nikto

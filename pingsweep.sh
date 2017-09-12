#!/bin/bash
# Author: Gary Hooks
# Ping sweep tool

echo "Ping Sweep Start...\n\n"

for i in `seq 1 254`; do

	ping -c 1 10.11.1.$i | grep "bytes from" | cut -d " " -f4 | cut -d ":" -f1 >> upips.txt & 

done


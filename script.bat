@echo off
rem #-------------------------------------------------------#
rem # Author: Gary Hooks
rem # Date: 10th November 2017
rem #-------------------------------------------------------#

set _BOX_=################################################
set _FILE_="C:\Users\Gary\Desktop\new3223.txt"
echo:> %_FILE_%

echo %_BOX_% >> %_FILE_%
echo # Hostname   >> %_FILE_%
echo %_BOX_% >> %_FILE_%
hostname >> %_FILE_% 
echo:>> %_FILE_%

echo %_BOX_% >> %_FILE_%
echo # Operating System and Version >> %_FILE_%
echo %_BOX_% >> %_FILE_%
systeminfo | findstr /B /C:"OS Name" /C:"OS Version" >> %_FILE_%
echo:>> %_FILE_%

echo %_BOX_% >> %_FILE_%
echo # net users >> %_FILE_%
echo %_BOX_% >> %_FILE_%
net users >> %_FILE_%
echo:>> %_FILE_%

echo %_BOX_% >> %_FILE_%
echo # Network Information >> %_FILE_%
echo %_BOX_% >> %_FILE_%
ipconfig /all >> %_FILE_%
route print >> %_FILE_%
arp -A >> %_FILE_%
echo:>> %_FILE_%

echo %_BOX_% >> %_FILE_%
echo # Active Network Connections and Firewall Rules >> %_FILE_%
echo %_BOX_% >> %_FILE_%

netstat -ano >> %_FILE_
netsh firewall show state >> %_FILE_
netsh firewall show config >> %_FILE_
echo:>> %_FILE_%


echo %_BOX_% >> %_FILE_%
echo # Running Processes and Scheduled Tasks >> %_FILE_%
echo %_BOX_% >> %_FILE_%
schtasks /query /fo LIST /v >> %_FILE_%
tasklist /SVC >> %_FILE_%
net start >> %_FILE_%
DRIVERQUERY >> %_FILE_%
echo:>> %_FILE_%


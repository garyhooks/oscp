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




sc query type= service

sc qc <SERVICE NAME>
  
  
wmic useraccount where name='robert' get sid



accesschk.exe -uwdqs Users c:\

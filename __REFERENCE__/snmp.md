SNMP
snmp-check
auxiliary/scanner/snmp/snmp_enum  

See page 133 in the PDF for some good examples

• UDP based protocol
• Therefore, it is susceptible to IP spoofing and replay attacks

• SNMP procols, 1, 2 and 2c offer no traffic encrpytion meaning full information and credentials can be seen over the network
• The network is often mis configured 
• It also offers weak authentification 

• It uses community strings which are basically names associated with grops of systems that communicate with each other
• The basic idea is that when the system has a problem or wants to send a message to an Administrator, they can send it using SNMP
• By defualt, all members are within the PUBLIC string.  That means anyone - even without permission - can view the information and sometimes write to it and modify it
• 


This is potentially a really good area to enumerate in as it's whole purpose is to manage the network

• nmap -sU --open -p 161 10.11.1.0/24 -oG snmpopen.txt
• onesixtyone -c community -i ips.txt (community is a list of recognised common community strings)

MIB - Mangement Information Database

This is a database organised in a tree like structure.  The leaves of the tree - the final end points - correspond to specific variables that can be probed by an external user.

snmpwalk -c public -v1 <IP ADDRESS>
snmpwalk -c public -v1 <IP ADDRESS> <MIB VALUE>

snmpwalk -c public -v1 <IP> 1.3.6.1.4.1.77.1.2.25




snmp-check

snmp-check <IP>


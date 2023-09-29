September Creation
Public code repository 
IS565-ForensicsTools/creation.tf at main · SirDuke8/IS565-ForensicsTools (github.com)

Documentation 
yum update -y
This command updates the database with information on any new packages or versions.
yum -y full -upgrade
This will download and install the most recent packages, replacing any earlier versions.
yum install nmap -y
Downloads Nmap
Nmap is a network scanner to scan IP addresses and ports in a network and to detect installed applications
yum install apache2 -y
Downloads Apache2
Apache2 is a package that contains the binaries for the Apache HTTP Server that can be configured to handle HTTP, HTTPS, and FTP.
yum install wireshark -y
Downloads Wireshark
Wireshark is a packet analyzer that captures and browses network traffic.
yum install traceroute -y
Downloads traceroute
traceroute is used to troubleshoot network issues such as high latency, packet loss, and connectivity problems.
yum install curl -y
Downloads curl
curl is a command-line tool to transfer data to or from a server, using protocols (HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, telnet, LDAP).  
yum install git -y
Downloads Git
Git is a DevOps tool used for source code management. Git is used to track changes in the source code, enabling multiple developers to work together.
yum install python3 -y
Downloads Python
Python is a programming language to develop a wide variety of applications. It allows us to access the tools of the command-line environment.
yum install php -y
Downloads PHP
PHP is a scripting language that can run on Linux and other OS. PHP is also used in the command-line scripts for system administration tasks, such as backup and log parsing.
yum install netcat -y
Downloads Netcat (NC)
Netcat is a utility tool that uses TCP and UDP connections to read and write in a network. It is used as a back-end tool that allows for port scanning and port listening.
yum install hydra -y
Downloads Hydra
Hydra is a brute-forcing tool. It helps users crack the passwords of network services. It can perform rapid dictionary attacks against more than 50 protocols including telnet, FTP, HTTP, HTTPS, SMB, databases, etc.
yum install nikto -y
Downloads Nikto
Nikto is a command-line vulnerability scanner. It scans web servers for dangerous files, computer generated Images, outdated server software, etc. 
yum install snort -y
Downloads Snort
Snort is a network IDS/IPS. It monitors network traffic and identifies potential malicious activities on IP networks. Snort is open-source. 
yum install tcpdump -y
Downloads tcpdump
Tcpdump analyzes network traffic by intercepting and displaying packets that are being created or received by the computer.
yum install net-tools -y
Downloads Net-tools
Collection of programs that control the network subsystem of the Linux kernel. These programs form the base of Linux networking


Proof-of-value 


This project is set to be improved upon in the future, we can change the instance type to allow for interaction with things such as wireshark, and we can lock down the instance more by improving the security group and VPC it is attached to. With other instance types and configurations, we can start to add more technologies to the instance. We are excited to work more on this project in the coming months!

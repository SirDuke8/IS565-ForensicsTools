This terraform script uses the following commands to install a variety of tools to help Digital Forensics students in their educational pursuits. The script works quickly and can be deployed to a large number of instances instantaneously, which allows this script to be used in classroom settings with dozens of students simultaneously. The tools being installed are as follows:

- [Apache2](https://httpd.apache.org/)
- [curl](https://curl.se/)
- [Git](https://git-scm.com/)
- [Hydra](https://github.com/vanhauser-thc/thc-hydra)
- [Netcat](https://en.wikipedia.org/wiki/Netcat)
- [net-tools](https://en.wikipedia.org/wiki/Net-tools)
- [Nikto](https://cirt.net/Nikto2)
- [Nmap](https://nmap.org/)
- [PHP](https://www.php.net/)
- [Python3](https://www.python.org/)
- [Snort](https://www.snort.org/)
- [tcpdump](https://www.tcpdump.org/)
- [traceroute](https://linux.die.net/man/8/traceroute)
- [Wireshark](https://www.wireshark.org/)

## Documentation

- Update the package database with information on any new packages or versions:
  ```
  yum update -y
  ```

- Download and install the most recent packages, replacing any earlier versions:
  ```
  yum -y full -upgrade
  ```

- Install Nmap, a network scanner for scanning IP addresses and ports in a network and detecting installed applications:
  ```
  yum install nmap -y
  ```

- Install Apache2, a package containing binaries for the Apache HTTP Server that can be configured to handle HTTP, HTTPS, and FTP:
  ```
  yum install apache2 -y
  ```

- Install Wireshark, a packet analyzer that captures and browses network traffic:
  ```
  yum install wireshark -y
  ```

- Install traceroute, used to troubleshoot network issues such as high latency, packet loss, and connectivity problems:
  ```
  yum install traceroute -y
  ```

- Install curl, a command-line tool to transfer data to or from a server using various protocols (HTTP, FTP, IMAP, POP3, SCP, SFTP, SMTP, TFTP, telnet, LDAP):
  ```
  yum install curl -y
  ```

- Install Git, a DevOps tool used for source code management to track changes in source code:
  ```
  yum install git -y
  ```

- Install Python3, a programming language for developing various applications and accessing command-line tools:
  ```
  yum install python3 -y
  ```

- Install PHP, a scripting language that can run on Linux and other OS, commonly used for system administration tasks:
  ```
  yum install php -y
  ```

- Install Netcat (NC), a utility tool that uses TCP and UDP connections for reading and writing in a network, often used for port scanning and listening:
  ```
  yum install netcat -y
  ```

- Install Hydra, a brute-forcing tool for cracking passwords of network services, supporting over 50 protocols:
  ```
  yum install hydra -y
  ```

- Install Nikto, a command-line vulnerability scanner for web servers, detecting dangerous files, outdated server software, etc.:
  ```
  yum install nikto -y
  ```

- Install Snort, a network IDS/IPS that monitors network traffic and identifies potential malicious activities on IP networks:
  ```
  yum install snort -y
  ```

- Install tcpdump, which analyzes network traffic by intercepting and displaying packets created or received by the computer:
  ```
  yum install tcpdump -y
  ```

- Install Net-tools, a collection of programs that control the network subsystem of the Linux kernel, forming the base of Linux networking:
  ```
  yum install net-tools -y
  ```

## Proof-of-Value

![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is1.png)
Here, we have the script at work when it initializes the instances we will install the forensics tools in.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is2.png)
We can see that an instance has been made, and is now ready to be accessed.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is3.png)
Demonstration that nmap was successfully installed and is working.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is4.png)
Demonstration use of traceroute.

This project is set to be improved upon in the future. We can change the instance type to allow for interaction with tools like Wireshark and enhance the security group and VPC it is attached to. With different instance types and configurations, we can introduce additional technologies to the instance. We are excited to work more on this project in the coming months!

# September Creation

## Public Code Repository
- [IS565-ForensicsTools/creation.tf at main · SirDuke8/IS565-ForensicsTools (GitHub)](https://github.com/SirDuke8/IS565-ForensicsTools)

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



This project is set to be improved upon in the future. We can change the instance type to allow for interaction with tools like Wireshark and enhance the security group and VPC it is attached to. With different instance types and configurations, we can introduce additional technologies to the instance. We are excited to work more on this project in the coming months!

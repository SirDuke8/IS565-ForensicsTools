This terraform script uses the following commands to install a variety of tools to help Digital Forensics students in their educational pursuits. The script works quickly and can be deployed to a large number of instances instantaneously, which allows this script to be used in classroom settings with dozens of students simultaneously. The tools being installed are as follows:

- [Apache2](https://httpd.apache.org/)
- [Autopsy](https://www.autopsy.com/)
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
- [Shodan](https://www.shodan.io/)
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
- Install Shodan, is a search engine designed to map and gather information about internet-connected devices and systems:
  ```
  pip install -U --user shodan
  ```

The implementation of a firewall restricting access to the BYU network and the integration of a load balancer for the auto scaling group represent significant steps in fortifying our network security and optimizing resource allocation upon creating a preferred learning environment.

## Access Restrictions with Firewall
The firewall has been configured to only allow incoming and outgoing traffic from and to IP addresses associated with the BYU network. This measure ensures that our infrastructure is shielded from unauthorized external access, bolstering the overall security of our system.

## Firewall Configuration Details
- Firewall Type: Ingress and Egress filtering
- Allowed IP Range: BYU network IP addresses
- Denied IP Range: Any IP address not belonging to the BYU network

## Auto Scaling Group Integration
The load balancer is an integral component of our new auto scaling group, dynamically distributing incoming traffic among multiple instances based on predefined criteria. This not only improves system reliability but also allows for automatic scaling in response to varying workloads.

## Auto Scaling Group Configuration Details
- Load Balancer Type: Application Load Balancer
- Integration with Auto Scaling Group: Yes
- Scaling Policies: Defined based on CPU utilization and other relevant metrics

## Proof-of-Value - October
Our desire here was to iterate on the september creation. The changes we made were mostly geared towards educating the users on the use cases for each of the software we highlighted in September, and then making the instance kali linux based.

## Proof-of-Value - September

![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is1.png)
- Here, we have the script at work when it initializes the instances we will install the forensics tools in.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is2.png)
- We can see that an instance has been made, and is now ready to be accessed.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is3.png)
- Demonstration that nmap was successfully installed and is working.


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is4.png)
- Demonstration use of traceroute.

This project is set to be improved upon in the future. We can change the instance type to allow for interaction with tools like Wireshark and enhance the security group and VPC it is attached to. With different instance types and configurations, we can introduce additional technologies to the instance. 


![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is5.png)
- Here, we subscribed to use the kali linux image to then apply the AMI to our terraform.

![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is6.png)
- Once we were deployed the Kali instance, we had to install all the necessary software, following the guide found here: https://www.kali.org/docs/cloud/aws/. We also downloaded all of the guide files we created onto the image under the kali user.

![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is7.png)
- Once those files and programs were installed on Kali the way we wanted, we created a snapshot Golden Image, to then be used in our terraform. So everytime the terraform is run, it will create a Kali image with all of the guide files and programs installed and configured correctly.

![Starting Application](https://github.com/SirDuke8/IS565-ForensicsTools/blob/main/pictures/is8.png)
- as you can see, the AMI of our terraform instance is the same as the golden image shown above.

## Proof-of-Value - November


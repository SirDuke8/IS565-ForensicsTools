provider "aws" {
  region                   = "us-east-2"
  shared_credentials_files = ["aws-creds"]
  profile                  = "default"
}

data "aws_ami" "main" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.*"]
  }
}

resource "aws_security_group" "main" {
  name        = "main-sg"
  description = "Security Group for IS565 EC2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_template" "main" {
  name_prefix   = "IS565-"
  image_id      = data.aws_ami.main.id
  instance_type = "t2.micro"
  key_name      = "EC2Key"

  vpc_security_group_ids = [aws_security_group.main.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    apt-get update -y
    apt-get -y full-upgrade
    apt-get install nmap -y
    apt-get install apache2 -y
    apt-get install wireshark -y
    apt-get install traceroute -y
    apt-get install curl -y
    apt-get install git -y
    apt-get install python3 -y
    apt-get install php -y
    apt-get install netcat -y
    apt-get install john -y
    apt-get install hydra -y
    apt-get install nikto -y
    apt-get install snort -y
    apt-get install tcpdump -y
    apt-get install net-tools -y
  EOF
  )

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_instance" "main" {
  launch_template {
    id      = aws_launch_template.main.id
    version = "$Latest"
  }

  tags = {
    Name = "IS565-september"
  }
}

provider "aws" {
  region                   = "us-east-2"
  shared_credentials_files = ["aws-creds"]
  profile                  = "default"
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

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_launch_template" "main" {
  name_prefix   = "IS565-"
  image_id      = "ami-066771efbcf9a404a"
  instance_type = "t2.micro"
  key_name      = "EC2Key"

  vpc_security_group_ids = [aws_security_group.main.id]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt full-upgrade -y
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
    Name = "IS565-october"
  }
}

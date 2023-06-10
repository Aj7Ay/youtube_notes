# create security group for the ec2 instance
resource "aws_security_group" "ec2_security_group" {
  name        = "ec2 security group"
  description = "allow access on ports 8080 and 22"

  # allow access on port 8080
  ingress {
    description = "http proxy access"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # allow access on port 22
  ingress {
    description = "ssh access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "jenkins server security group"
  }
}

resource "aws_instance" "jenkins" {
  ami                         = "ami-0f5ee92e2d63afc18"
  instance_type               = "t2.medium"
  key_name                    = "MUMBAI"
  vpc_security_group_ids      = [aws_security_group.ec2_security_group.id]
  associate_public_ip_address = false

  tags = {
    Name = "jenkins-instance"
  }
  user_data = <<-EOF
    #!/bin/bash
    # Installing Java
    apt update -y
    apt install openjdk-11-jre -y
    java --version

    # Installing Jenkins
    curl -fsSL https://pkg.jenkins.io/debian/jenkins.io-2023.key | sudo tee \
        /usr/share/keyrings/jenkins-keyring.asc > /dev/null
    echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
        https://pkg.jenkins.io/debian binary/ | sudo tee \
        /etc/apt/sources.list.d/jenkins.list > /dev/null
    sudo apt-get update -y
    sudo apt-get install jenkins -y
  EOF
}

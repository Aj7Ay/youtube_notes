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
  ami                    = "ami-078efad6f7ec18b8a"
  instance_type          = "t2.micro"
  key_name               = "MUMBAI"
  vpc_security_group_ids = [aws_security_group.ec2_security_group.id]
  #associate_public_ip_address = false

  tags = {
    Name = "jenkins-instance"
  }
  user_data = <<-EOF
    #!/bin/bash
    # Installing Java
    sudo yum update -y
    sudo amazon-linux-extras install java-openjdk11 -y
    java --version

    # Installing wget and necessary packages for HTTP and HTTPS
    sudo yum install wget -y
    sudo yum install ca-certificates -y
    sudo yum install nss -y

    # Downloading Jenkins repository file and importing the key
    sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
    sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io-2023.key
    sudo yum upgrade -y

    # Installing Jenkins
    sudo yum install jenkins -y
    sudo systemctl start jenkins
    sudo systemctl enable jenkins
  EOF
}

terraform {
  required_version = ">=0.12"
}

resource "aws_instance" "ec2_example" {

  ami                    = "ami-09d8b83b58eabf58b"
  instance_type          = "t3.micro"
  key_name               = "mr-cloud-book"
  vpc_security_group_ids = [aws_security_group.main.id]
  user_data              = <<-EOF
            #!/bin/bash
            sudo su
            yum update -y
            yum install -y httpd
            cd /var/www/html
            wget https://github.com/azeezsalu/techmax/archive/refs/heads/main.zip
            unzip main.zip
            cp -r techmax-main/* /var/www/html/
            rm -rf techmax-main main.zip
            systemctl enable httpd 
            systemctl start httpd
      EOF
}

resource "aws_security_group" "main" {
  name        = "EC2-webserver-SG-1"
  description = "Webserver for EC2 Instances"

  ingress {
    from_port   = 80
    protocol    = "TCP"
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    protocol    = "TCP"
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "deployer" {
  key_name   = "mr-cloud-book"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCihDAhkioSWqfTDzJSKag2lqQCPNh/hayPl+3TTogfK2+F8WiWIn3wXeP8F1xT1VzZY/s+nGMvT+zGGtAfNk8WWdw7orLY7LRYP3zYNzlDSc8U3bg+CA3B4POaQvK6ypUAc+SW2zaRMyLYaQpMsF/ZD3h7G6Ptr/7+A8xabEk2Lm4aHgXRLoqDOBnK99W1ri9i8Qc7HK3hgYdD3Bnc917NkNsKh/qaOpKmpslKkRWICrDIR6wFnZYVWTkizr85KAjuC7HKPilCNkntYoYA6HDFhPPPZSb53+E8pFnwxSQjJzks9q1B+viZ0BUUbLSBMYnlR9CFrkAS2JI5BvrtGodV admin@DESKTOP-0S3CU0K"
}

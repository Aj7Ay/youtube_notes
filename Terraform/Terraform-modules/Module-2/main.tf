terraform {
  required_version = ">=0.12"
}
resource "aws_instance" "ec2_example" {
  ami                    = "ami-09d8b83b58eabf58b"
  instance_type          = "t3.micro"
  key_name               = "Aj"
  vpc_security_group_ids = [aws_security_group.main.id]

  user_data = <<-EOF
      #!/bin/bash
      sudo su
      yum update -y
      amazon-linux-extras install nginx1 -y
      systemctl enable nginx
      systemctl start nginx
      systemctl status nginx 
      sudo echo <!DOCTYPE html> <html> <head> <meta name="viewport" content="width=device-width, initial-scale=1"> <title>youtube Allow Fullscreen</title> </head> <body> <!--Need Internet Connection--> <!--Fullscreen allow--> <iframe width="420" height="315" src="https://www.youtube.com/embed/OK7fy40Ai6A" allowfullscreen></iframe> </body> </html>" > /usr/share/nginx/html/index.html
      systemctl restart nginx 
      EOF
}

resource "aws_security_group" "main" {
  name        = "EC2-webserver-SG-2"
  description = "Webserver for EC2 Instances"

  ingress {
    from_port   = 8080
    protocol    = "TCP"
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
  }
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
  key_name   = "Aj"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDG8osL7/jMzXeDCqphDwpT6t6j6xWCyWYI6h+uN/FX1OhdhrP8caxHy+dWCyxIceb3dV11ADWzxIZRUCWfkNc3QT2cBnfCerjECATp1/QpfkT9KMBrk4m2iBKBQ4y9pUesALQyWFI4TAWsiV4a1iJR6CmBO85wa+d9cMd70PmHZJLRe5LaAK5IaRK/eta5Zo9lgpP7ujTO+nRigWd1fTZiS3Hu8qyzr8lRm0khDqHK7+8jl2uKznFvr06f9XR9g/LaNQ9Gavmo4rcE493uzxKwz7HhIXx5W1MMOVgisaEI/XWtjAjRjOE1zAtyF8YcNFqC032nHQUaw4w6Xk8tZTvKWtE+JwFQQ9Zs8Y6B0HrBq9o6wWYBNWDvgOWeMtjJnI2rzVyBGMrD5Pna5V92jPczjGKShpo3QOeC1If36jcEUuhQcdRsOp2zh7u2R/uUukh2nulqXILYOGIG2uN2xzo5hnzCkCUVkuCxDE2pFHbOM2nVn25rc1U70RRz7TksmW8= admin@DESKTOP-0S3CU0K"
}

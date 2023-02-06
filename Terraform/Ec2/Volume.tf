 root_block_device {

    volume_size           = 16

    volume_type           = "gp2"
    delete_on_termination = true
  }

# this code also attachs extra volume to ec2 instnace
  ebs_block_device {
    device_name = "/dev/sdf"
    volume_size = 1
    volume_type = "gp2"
  }

#second method

resource "aws_ebs_volume" "ebs-volume-1" {
   availability_zone = 
   size = 10
   type = "gp2"
   tags {
       Name = "Extra volume data"
     }
}
 
resource "aws_volume_attachment" "ebs-volume-1-attachment" {
 device_name = "/dev/xvdh"
 volume_id = 
 instance_id = 
}


Complete script:

provider "aws" {
  region  = "ap-south-2"
  profile = "mr-cloud-book"
}
variable "sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [8080, 80, 9000, 22, 443]
}
resource "aws_instance" "ec2_example" {
  ami                    = "ami-09d8b83b58eabf58b"
  instance_type          = "t3.micro"
  key_name               = "mr-cloud-book"
  vpc_security_group_ids = [aws_security_group.main.id]
  #user_data              = file("install_website.sh")
  root_block_device {
    volume_size           = 16
    volume_type           = "gp2"
    delete_on_termination = true
  }
  tags = {
    "Name" = "Hyd-Region"
  }
}
resource "aws_ebs_volume" "ebs-volume-1" {
  availability_zone = aws_instance.ec2_example.availability_zone
  size              = 20
  type              = "gp2"
  tags = {
    Name = "Extra volume data"
  }
}

resource "aws_volume_attachment" "ebs-volume-1-attachment" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.ebs-volume-1.id
  instance_id = aws_instance.ec2_example.id
}
resource "aws_security_group" "main" {
  dynamic "ingress" {
    for_each = var.sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_key_pair" "deployer" {
  key_name   = "mr-cloud-book"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCihDAhkioSWqfTDzJSKag2lqQCPNh/hayPl+3TTogfK2+F8WiWIn3wXeP8F1xT1VzZY/s+nGMvT+zGGtAfNk8WWdw7orLY7LRYP3zYNzlDSc8U3bg+CA3B4POaQvK6ypUAc+SW2zaRMyLYaQpMsF/ZD3h7G6Ptr/7+A8xabEk2Lm4aHgXRLoqDOBnK99W1ri9i8Qc7HK3hgYdD3Bnc917NkNsKh/qaOpKmpslKkRWICrDIR6wFnZYVWTkizr85KAjuC7HKPilCNkntYoYA6HDFhPPPZSb53+E8pFnwxSQjJzks9q1B+viZ0BUUbLSBMYnlR9CFrkAS2JI5BvrtGodV admin@DESKTOP-0S3CU0K"

}
output "public_ip" {
  value = aws_instance.ec2_example.public_ip
}


Here's an example of how you could mount an EBS volume to an EC2 instance using a Terraform script: using Remote exec : 

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  root_block_device {
    volume_size = "8"
    volume_type = "gp2"
  }
}

resource "aws_ebs_volume" "example" {
  availability_zone = "us-west-2a"
  size              = "8"
  type              = "gp2"

  tags = {
    Name = "example-volume"
  }
}

resource "aws_volume_attachment" "example" {
  device_name = "/dev/sdf"
  volume_id   = aws_ebs_volume.example.id
  instance_id = aws_instance.example.id
}

resource "null_resource" "example" {
  provisioner "remote-exec" {
    inline = [
      "sudo mkfs -t ext4 /dev/xvdf",
      "sudo mount /dev/xvdf /mnt",
      "sudo echo '/dev/xvdf /mnt ext4 defaults 0 0' | sudo tee -a /etc/fstab"
    ]

    connection {
      type     = "ssh"
      host     = aws_instance.example.public_ip
      user     = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
    }
  }
}

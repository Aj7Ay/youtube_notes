# create vpc
resource "aws_vpc" "vpc" {
  cidr_block              = 
  instance_tenancy        = 
  enable_dns_hostnames    = true

  tags      = {
    Name    = "${}-vpc"
  }
}

# create internet gateway and attach it to vpc
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id    = 

  tags      = {
    Name    = "${}-igw"
  }
}

# use data source to get all avalablility zones in region
data "aws_availability_zones" "available_zones" {}

# create public subnet az1
resource "aws_subnet" "public_subnet_az1" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags      = {
    Name    = 
  }
}

# create public subnet az2
resource "aws_subnet" "public_subnet_az2" {
  vpc_id                  = 
  cidr_block              = 
  availability_zone       = 
  map_public_ip_on_launch = 

  tags      = {
    Name    = 
  }
}

# create route table and add public route
resource "aws_route_table" "public_route_table" {
  vpc_id       = 

  route {
    cidr_block = 
    gateway_id = 
  }

  tags       = {
    Name     = 
  }
}

# associate public subnet az1 to "public route table"
resource "aws_route_table_association" "public_subnet_az1_route_table_association" {
  subnet_id           = 
  route_table_id      = 
}

# associate public subnet az2 to "public route table"
resource "aws_route_table_association" "public_subnet_az2_route_table_association" {
  subnet_id           = 
  route_table_id      = 
}

# create private app subnet az1
resource "aws_subnet" "private_app_subnet_az1" {
  vpc_id                   = 
  cidr_block               = 
  availability_zone        = 
  map_public_ip_on_launch  = 

  tags      = {
    Name    = 
  }
}

# create private app subnet az2
resource "aws_subnet" "private_app_subnet_az2" {
  vpc_id                   = 
  cidr_block               = 
  availability_zone        = 
  map_public_ip_on_launch  = 

  tags      = {
    Name    = 
  }
}

# create private data subnet az1
resource "aws_subnet" "private_data_subnet_az1" {
  vpc_id                   = 
  cidr_block               = 
  availability_zone        = 
  map_public_ip_on_launch  = 

  tags      = {
    Name    = 
  }
}

# create private data subnet az2
resource "aws_subnet" "private_data_subnet_az2" {
  vpc_id                   = 
  cidr_block               = 
  availability_zone        = 
  map_public_ip_on_launch  = 

  tags      = {
    Name    = 
  }

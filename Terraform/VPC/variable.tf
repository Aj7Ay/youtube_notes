# create vpc cidr blocks

variable "vpc_cidr" {
  description = "VPc  cidr block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_az1_cidr" {
  description = "public subnet az1 cidr"
  type        = string
  default     = "10.0.0.0/24"
}

variable "public_subnet_az2_cidr" {
  description = "public subnet az2 cidr"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_app_subnet_az1_cidr" {
  description = "private app subnet az1"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_app_subnet_az2_cidr" {
  description = "private app subnet az2"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_data_subnet_az1_cidr" {
  description = "private data subnet az1"
  type        = string
  default     = "10.0.4.0/24"
}

variable "private_data_subnet_az2_cidr" {
  description = "private data subnet az2"
  type        = string
  default     = "10.0.5.0/24"
}

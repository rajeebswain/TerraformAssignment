# Variable CIDR block for VPC
variable "vpc_cidr_block" {
    description = "This is the CIDR block for VPC"
    default = "10.0.0.0/16"
}

# Variables of Public Subnet
variable "public_subnet_cidr_block" {
    description = "This is the CIDR block for Public Subnet"
    default = "10.0.0.0/17"
}

variable "public_subnet_availability_zone" {
    description = "This is the Availability Zone for Public Subnet"
    default = "us-west-2a"
}

# Variables of Private Subnet
variable "private_subnet_cidr_block" {
    description = "This is the CIDR block for Private Subnet"
    default = "10.0.128.0/17"
}

variable "private_subnet_availability_zone" {
    description = "This is the Availability Zone for Private Subnet"
    default = "us-west-2b"
}

# Variable for ec2-instance
variable "ami" {
    description = "The ami id."
    default = "ami-0f3769c8d8429942f"
}

variable "instance_type" {
    description = "The instance type "
    default = "t2.micro"
  
}





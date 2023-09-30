# VPC
resource "aws_vpc" "vpc" {
    cidr_block = var.vpc_cidr_block
}

# Public Subnet
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.public_subnet_cidr_block
    availability_zone = var.public_subnet_availability_zone
    map_public_ip_on_launch = true
}

# Private Subnet
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = var.private_subnet_cidr_block
    availability_zone = var.private_subnet_availability_zone
}

# Security Group 
resource "aws_security_group" "instance_sg" {
    name = "web_sg"
    vpc_id = aws_vpc.vpc.id

    # Inbound rule for SSH
    ingress {
        description = "Port for SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # Outbound rule for all traffic
    egress {
        description = "Open All traffic "
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
  
}

# ec2-Instance
resource "aws_instance" "web_instance" {
    ami = var.ami
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.instance_sg.id]
    subnet_id = aws_subnet.public_subnet.id
    root_block_device {
      volume_size = 8
      volume_type = "gp2"
    }

    tags = {
        purpose = "assignment"

    }
}
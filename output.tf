# VPC Output
output "vpc_output" {
    description = "The VPC ID"
    value = aws_vpc.vpc.id
}

# Public Subnet output
output "public_subnet_output" {
    value = aws_subnet.public_subnet.id
}

# Private Subnet output
output "private_subnet_output" {
    value = aws_subnet.private_subnet.id
}

# Security group output
output "aws_security_group_output" {
    value = aws_security_group.instance_sg.id
}

# ec2-instance output.  
output "web_instance_public_ip" {
    value = aws_instance.web_instance.public_ip
}

output "web_instance_id" {
    value = aws_instance.web_instance.id
}

output "web_instance_tag" {
    value = aws_instance.web_instance.tags
  
}


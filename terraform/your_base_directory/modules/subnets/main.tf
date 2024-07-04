variable "vpc_id" {}

resource "aws_subnet" "public_subnet_1" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "public_subnet_2" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id     = var.vpc_id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2b"
}

output "public_subnet_1" {
  value = aws_subnet.public_subnet_1.id
}

output "public_subnet_2" {
  value = aws_subnet.public_subnet_2.id
}

output "private_subnet_1" {
  value = aws_subnet.private_subnet_1.id
}

output "private_subnet_2" {
  value = aws_subnet.private_subnet_2.id
}


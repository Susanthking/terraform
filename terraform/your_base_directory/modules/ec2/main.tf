variable "public_subnet_1" {}
variable "public_subnet_2" {}
variable "security_group_id" {}

resource "aws_instance" "web_1" {
  ami           = "ami-0c55b159cbfafe1f0" # Change this to your preferred AMI
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_1
  security_groups = [var.security_group_id]
}

resource "aws_instance" "web_2" {
  ami           = "ami-0c55b159cbfafe1f0" # Change this to your preferred AMI
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_2
  security_groups = [var.security_group_id]
}

output "instance_ids" {
  value = [aws_instance.web_1.id, aws_instance.web_2.id]
}


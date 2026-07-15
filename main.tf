terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.54.0"
    }
  }
}


resource "aws_instance" "my_first_server" {
  ami           = "ami-0011550b539717e2a" # Canonical, Ubuntu Enterprise, 24.04 LTS in us-east-1
  instance_type = "t3.micro"             # Free tier eligible instance type
  tags = {
    Name = "Terraform-Managed-EC2"
  }
}

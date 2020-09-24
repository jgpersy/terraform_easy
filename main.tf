terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
  access_key = var.access_key
  secret_key= var.secret_key
}

resource "aws_instance" "instance-1-ubuntu" {
  ami           = var.ubuntu_instance.ami
  instance_type = var.ubuntu_instance.instance_type

  #Put instance inside referenced subnet
  subnet_id     = aws_subnet.prod_subnet.id
  
  tags = {
    Name = "ubuntu_main"
  }
}


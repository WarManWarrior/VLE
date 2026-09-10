terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-07f35208dba26f009"
  instance_type = "t3.micro"
  key_name      = "pixelframe-key"

  tags = {
    Name = "DevOps-Lab-Server"
  }
}
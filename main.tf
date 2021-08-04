terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "foo" {
  ami           = "ami-083ac7c7ecf9bb9b0"
  instance_type = "t2.micro"
}
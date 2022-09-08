terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = "ap-southeast-1"
  access_key = "AKIA5HWWGBLR6T5VEW4G"
  secret_key = "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"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b89f7b3f054b957e"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
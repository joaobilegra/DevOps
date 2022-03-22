terraform {
  required_version = "v1.1.7"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  access_key= ""
  secret_key= ""

}

resource "aws_instance" "web" {
  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = "t3.micro"
  tags = {
    Name = "Pcdojoão"

  }
}

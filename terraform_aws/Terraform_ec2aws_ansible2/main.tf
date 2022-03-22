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
  region     = "us-east-1"
  access_key = ""
  secret_key = ""


}

resource "aws_instance" "ubuntu2" {
  ami           = "ami-04505e74c0741db8d"
  instance_type = "t3.micro"
  key_name =   "meupar3"
  tags = {
    Name = "acessossh3"

  }
}

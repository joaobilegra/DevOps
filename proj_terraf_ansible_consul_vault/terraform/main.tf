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






resource "aws_instance" "ubuntu" {
  count         = 3
  ami           = "ami-04505e74c0741db8d"
  key_name      = aws_key_pair.ec2_key.key_name
  instance_type = "t2.micro"
  tags = {
    Name = format("consul %d", count.index + 1)
  }
}

resource "aws_instance" "ubuntu2" {
  count         = 3
  ami           = "ami-04505e74c0741db8d"
  key_name      = aws_key_pair.ec2_key.key_name
  instance_type = "t2.micro"
  tags = {
    Name = format("vault %d", count.index + 1)
  }
}

resource "aws_key_pair" "ec2_key" {
  key_name   = "id_rsa.pub"
  public_key = file("id_rsa.pub")
}

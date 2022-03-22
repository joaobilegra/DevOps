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
  region  = var.aws_region
  access_key= ""
  secret_key= ""

}

resource "aws_instance" "web" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  tags = var.instance_tags
}

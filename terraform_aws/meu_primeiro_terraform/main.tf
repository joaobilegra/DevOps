
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
  profile = "awsacess1"

}
resource "aws_s3_bucket" "my-teste-bucket" {
  bucket = "my-first-bucket-123456780079"

  tags = {
    Name        = "my bucket"
    environment = "DEV"
    managedby   = "Terraform"
    owner       = "João Barbosa"
  }

}
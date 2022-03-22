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
  access_key = "AKIAX7KCOOTLYKRTP7UR"
  secret_key = "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"


}
resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-8859687"

  tags = {
    Name        = "my bucket"
    environment = "DEV"
    managedby   = "Terraform"
    owner       = "João Barbosa"
  }
}

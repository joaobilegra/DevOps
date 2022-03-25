terraform {
  required_version = "v1.1.7"


  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.5.0"
    }
  }

  backend "s3" {
    bucket = "test412737927692"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    access_key = ""
    secret_key = ""
  }

}

provider "aws" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""


}

data "aws_caller_identity" "current" {

}

resource "aws_s3_bucket"  "this" {
    bucket = "test${data.aws_caller_identity.current.account_id}"


    tags = {
      owner = "JOAO"
    }

}


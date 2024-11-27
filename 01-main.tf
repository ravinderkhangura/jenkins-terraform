terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
  }
  backend "s3" {
    bucket = "cli-bucket-12"
    key    = "terraform"
    region = "us-east-1"
    dynamodb_table = "Terraform-lock"
  }
}

provider "aws" {
  # Configuration options
}
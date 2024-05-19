terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.49.0"
    }
  }
  backend "s3" {
    bucket = "remote283"
    key    = "dynamo-demo"
    region = "us-east-1"
    dynamodb_table = "project-lock"
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}
terraform {
  #backend "s3" {
   # bucket         = "manuchandrasekhar-tfstate"
    #key            = "test_state"
    #region         = "us-east-1"
    #dynamodb_table = "tfstate"
  #}
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
}


provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      Environment = "prod"
      Owner       = "manuchandrasekhar@gmail.com"
      Project     = "test_bucket"
    }
  }
}
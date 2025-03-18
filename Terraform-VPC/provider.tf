terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
# Configure the aws backend(bucket S3)
terraform {
  backend "s3" {
    bucket = "terraform-remote-github-s3"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

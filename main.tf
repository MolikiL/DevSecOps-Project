terraform {
  backend "s3" {
    bucket       = "state-storage-for-devsecops-project"
    key          = "prod/terraform.tfstate"
    region       = "eu-west-2"
    encrypt      = true
    use_lockfile = true # S3-native locking
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_s3_bucket" "our-state-file" {
  bucket = "state-storage-for-devsecops-project"
}

resource "aws_vpc" "ole_vpc" {
  cidr_block           = "10.123.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    name = "dev"
  }


}
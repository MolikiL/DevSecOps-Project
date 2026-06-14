terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettoday"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2" # London
}

resource "aws_s3_bucket" "terraformbuckettodaymay31" {
  bucket = "terraformbuckettodaymay31"
  }


provider "aws" {
  region = "eu-west-2" # London
}
resource "aws_s3_bucket" "terraformbuckettodaymay31" {
  bucket = "terraformbuckettodaymay31"
}
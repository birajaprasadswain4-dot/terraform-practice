terraform {
  backend "s3" {
    bucket = "tfbucket2004"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
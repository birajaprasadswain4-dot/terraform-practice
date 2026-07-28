terraform {
  backend "s3" {
    bucket = "tfbucket2004"
    key    = "terraform.tfstate"
    dynamodb_table = "mabaggggggggggg"
     encrypt = true
     #use_lockfile = true  #s3 native locking process to prevent concurrent state modificationsterraform
    region = "us-east-1"
  }
}
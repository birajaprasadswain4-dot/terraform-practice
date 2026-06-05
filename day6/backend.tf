terraform {
  backend "s3" {
    bucket = "tmcnit2026"
    key    = "terraform.tfstate"
     encrypt = true
     use_lockfile = true  #s3 native locking process to prevent concurrent state modificationsterraform
    region = "us-east-1"
  }
}
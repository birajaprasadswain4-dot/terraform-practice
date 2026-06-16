resource "aws_instance" "name" {
    ami = "ami-0521cb2d60cfbb1a6"
    instance_type = "t2.micro"
    tags = {
      Name = "ec2.com"
    }
  
}
resource "aws_s3_bucket" "name" {
    bucket = "astandukapastanadu"
  
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "main.vpc"
    }
  
}
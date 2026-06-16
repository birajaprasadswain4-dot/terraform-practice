resource "aws_instance" "web" {
  ami           = "ami-0521cb2d60cfbb1a6"
  instance_type = "t2.micro"

  tags = {
    Name = "web-${terraform.workspace}"
  }
}
resource "aws_instance" "name" {
  ami = "ami-029a761f237195c2c"
  instance_type = "t3.micro"
  tags = {
    name = "arup"
  }
  
}
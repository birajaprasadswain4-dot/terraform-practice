module "ec2_a" {
  source        = "./modules/ec2"
  ami           = "ami-0521cb2d60cfbb1a6"
  instance_type = "t2.micro"
  name          = "server-A"
}

module "ec2_b" {
  source        = "./modules/ec2"
  ami           = "ami-0521cb2d60cfbb1a6"
  instance_type = "t2.micro"
  name          = "server-B"
}
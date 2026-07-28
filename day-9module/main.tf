resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id


    #   tags = merge(
#     {
#       Name = var.name
#     },
#     var.tags
#   )
}
  
resource  "aws_vpc" "name" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "test.vpc"
  }


  
}
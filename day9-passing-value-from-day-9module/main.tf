module "dev" {
    source = "../day-9module"
     instance_type = "t3.micro"
    name = "dev-instance"
    ami_id = "ami-0152204c1a187337c"
    vpc_cidr = "10.0.0.0/24"   
}
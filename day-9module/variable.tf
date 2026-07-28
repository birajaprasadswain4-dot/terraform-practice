variable "name" {
  type = string
}
variable "ami_id" {
 type = string

}
variable "instance_type" {
    type = string
    default = ""
  
}
variable "tags" {
    type = map(string)
    default = {}
  
}
variable "subnet_id" {
    type = string
    default = ""
  
}
variable "vpc_cidr" {
    type = string
    default = ""
  
}
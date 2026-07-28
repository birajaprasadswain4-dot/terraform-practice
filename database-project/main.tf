module "database" {
  source = "./modules/database"

  db_identifier = "mydb"
  storage        = 20
  engine          = "mysql"
  engine_version  = "8.0"
  instance_class  = "db.t3.micro"
  username        = "admin"
  password        = "Password123!"
}
resource "aws_db_instance" "db" {
  identifier        = var.db_identifier
  allocated_storage = var.storage
  engine            = var.engine
  engine_version    = var.engine_version
  instance_class    = var.instance_class
  username          = var.username
  password          = var.password

  skip_final_snapshot = true
}

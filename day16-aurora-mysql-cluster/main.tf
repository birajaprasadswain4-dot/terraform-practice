data "aws_vpc" "default" {
  default = true
}
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}
data "aws_subnets" "default" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
}
resource "aws_db_subnet_group" "aurora" {

  name = "aurora-subnet"

  subnet_ids = data.aws_subnets.default.ids
}
resource "aws_rds_cluster" "users" {

  cluster_identifier = "users-cluster"

  engine = "aurora-mysql"

  engine_version = "8.0.mysql_aurora.3.08.2"

  master_username = var.db_username

  master_password = var.db_password

  db_subnet_group_name = aws_db_subnet_group.aurora.name

  vpc_security_group_ids = [
    data.aws_security_group.default.id
  ]

  skip_final_snapshot = true
}
resource "aws_rds_cluster_instance" "writer" {

  identifier = "writer-instance"

  cluster_identifier = aws_rds_cluster.users.id

  instance_class = "db.t4g.medium"

  engine = aws_rds_cluster.users.engine

  engine_version = aws_rds_cluster.users.engine_version
}
resource "aws_rds_cluster_instance" "reader" {

  identifier = "reader-instance"

  cluster_identifier = aws_rds_cluster.users.id

  instance_class = "db.t4g.medium"

  engine = aws_rds_cluster.users.engine

  engine_version = aws_rds_cluster.users.engine_version
}
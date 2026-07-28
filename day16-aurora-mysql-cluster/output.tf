output "cluster_endpoint" {
  value = aws_rds_cluster.users.endpoint
}

output "reader_endpoint" {
  value = aws_rds_cluster.users.reader_endpoint
}
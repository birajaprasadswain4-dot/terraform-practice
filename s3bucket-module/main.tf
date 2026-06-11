module "s3" {
  source = "./modules/s3"

  bucket_name       = var.bucket_name
  environment       = var.environment
  enable_versioning = var.enable_versioning
  tags              = var.tags
}
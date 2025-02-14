resource "aws_s3_bucket" "bucket_jaimeg" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_name
    Environment = var.environment
  }
}
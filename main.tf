provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "robbucket11"

  tags = {
    Name        = "robbucket11"
    Environment = "Dev"
  }
}

output "bucket_nombre" {
  value = aws_s3_bucket.my_bucket.bucket
}

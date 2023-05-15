provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Name        = "My Bucket"
    Environment = "Production"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}


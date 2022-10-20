resource "aws_s3_bucket" "s3" {
    bucket = var.bucket_name

    tags = {
    Name = var.bucket_name
    Date = timestamp()
    }
}

resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.s3.id
  #acl    = var.acl_value
}

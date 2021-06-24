resource "aws_s3_bucket" "dev4" {
  bucket = "vinicius-brito-costa-4"
  acl    = "private"

  tags = {
    Name = "vinicius-brito-costa-4"
  }
}
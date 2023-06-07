resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-project3-bucket"

  tags = {
    Name        = "my-project3-bucket"
    Environment = "Production"
  }
}

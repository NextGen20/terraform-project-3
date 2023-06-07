resource "aws_iam_user" "example" {
  name = "my-iam-user"

  tags = {
    Name        = "Amit"
    Environment = "Production"
  }
}

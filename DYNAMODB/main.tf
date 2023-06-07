resource "aws_dynamodb_table" "example" {
  name           = "project-3_table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "id"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "N"
  }

  attribute {
    name = "name"
    type = "S"
  }

}
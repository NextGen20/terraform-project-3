resource "aws_dynamodb_table" "example" {
  name           = "example_table"
 
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "N"
  }
  
  key {
    name = "id"
    type = "HASH"
  }
}

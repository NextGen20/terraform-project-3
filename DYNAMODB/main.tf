resource "aws_dynamodb_table" "book_catalog_table" {
  name             = "Devops"
  billing_mode     = "PROVISIONED"
  read_capacity    = 1
  write_capacity   = 1 
  hash_key         = "Course-Name"
  
  attribute {
    name = "Course"
    type = "S"
  }
  
  attribute {
    name = "Author"
    type = "S"
  }
  global_secondary_index {
    name               = "Author-Index"
    hash_key           = "Author"
    write_capacity     = 1
    read_capacity      = 1
    projection_type    = "INCLUDE"
    non_key_attributes = ["Genre"]
  }
  tags = {
    Name        = "Devops"
    Environment = "production"
  }
}
resource "aws_dynamodb_table" "book_catalog_table" {
  name             = "BookCatalog"
  billing_mode     = "PROVISIONED"
  read_capacity    = 1
  write_capacity   = 1 
  hash_key         = "BookName"
  
  attribute {
    name = "BookName"
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
    Name        = "book-catalog-table"
    Environment = "production"
  }
}
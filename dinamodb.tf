resource "aws_dynamodb_table" "banco" {
    provider               = aws.us-east-2
  name             = "meu_banco_de_dados"
  hash_key         = "TestTableHashKey"
  billing_mode     = "PAY_PER_REQUEST"
  stream_enabled   = true
  stream_view_type = "NEW_AND_OLD_IMAGES"

  attribute {
    name = "TestTableHashKey"
    type = "S"
  }
}
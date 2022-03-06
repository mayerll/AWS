resource "random_pet" "this" {
  length = 2
}

module "dynamodb_table" {
  source = "./dynamodb"

  name      = "my-table-${random_pet.this.id}"
  hash_key  = "id"
  range_key = "title"

  attributes = [
    {
      name = "id"
      type = "N"
    },
    {
      name = "title"
      type = "S"
    },
    {
      name = "age"
      type = "N"
    }
  ]

  global_secondary_indexes = [
    {
      name               = "TitleIndex"
      hash_key           = "title"
      range_key          = "age"
      projection_type    = "INCLUDE"
      non_key_attributes = ["id"]
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
  }
}


module "disabled_dynamodb_table" {
  source = "./dynamodb"

  create_table = false
}

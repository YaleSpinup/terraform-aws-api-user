provider "aws" {
  region = local.region
}

locals {
  region = "us-east-1"

  name = "tf-api-user-dev"
  pgp_key = "your/base64/pgp/public+key"
  tags = {
    Application = "api-user terraform module"
    Environment = "dev"
  }
}

module "api-user" {
  source = "../../"

  name    = local.name
  pgp_key = local.pgp_key
  tags = local.tags
}

output "access_key_id" {
  value       = module.api-user.access_key_id
  description = "access key id"
}

output "access_key_secret_encrypted" {
  value       = module.api-user.access_key_secret_encrypted
  description = "encrypted access key secret"
}

# terraform-aws-api-user

Creates an IAM user and adds them to the specified (pre-existing) IAM groups. Creates an inline IAM policy associated with the user. Returns the generated access key and secret (the secret is encrypted using the given PGP public key).

## Usage

Add the module to your terraform config and update variables as needed:

```
module "api-user" {
  source  = "app.terraform.io/yale-cloudeng/api-user/aws"
  version = "1.0.0"

  name = "your_apiuser_dev"
  pgp_key = "your/base64/pgp/public+key"
  groups = ["YourIAMgroup"]
  tags = {
    Application = "api-user terraform module"
    Environment = "dev"
  }
}
```

You may also want to output the access key id and secret:

```
output "access_key_id" {
  value       = module.api-user.access_key_id
  description = "access key id"
}

output "access_key_secret_encrypted" {
  value       = module.api-user.access_key_secret_encrypted
  description = "encrypted access key secret"
}
```

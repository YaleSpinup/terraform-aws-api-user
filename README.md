# terraform-aws-api-user

Creates an IAM user and adds them to the specified (pre-existing) IAM groups. Creates an inline IAM policy associated with the user. Returns the generated access key and secret (the secret is encrypted using the given PGP public key).

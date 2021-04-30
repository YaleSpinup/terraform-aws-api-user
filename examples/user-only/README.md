# Example with api-user module only creating a user with no groups/policies

Configuration in this directory creates an IAM user and access key without associating any groups or policies

## Usage

First replace `pgp_key` in `main.cf` with your public PGP key that will be used to encrypt the access key secret.

Then you just need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

variable "name" {
  type        = string
  description = "The name of the user to create"
}

variable "path" {
  type        = string
  description = "Optional path for the user"
  default     = "/spinup/"
}

variable "groups" {
  type        = list(any)
  description = "List of IAM group names this user should be added to"
}

variable "policies" {
  type        = list(any)
  description = "List of ARNs of the IAM policies to attach to this user"
}

variable "pgp_key" {
  type        = string
  description = "Base64-encoded PGP public key used to encrypt access key secrets"
}

variable "tags" {
  type = map(any)
}

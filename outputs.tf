output "access_key_id" {
  value       = aws_iam_access_key.key.id
  description = "access key id"
}

output "access_key_secret" {
  value       = aws_iam_access_key.key.encrypted_secret
  description = "encrypted access key secret"
}

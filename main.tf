resource "aws_iam_user" "user" {
  name          = var.name
  path          = var.path
  tags          = var.tags
  force_destroy = true
}

resource "aws_iam_user_group_membership" "attach_groups" {
  user   = aws_iam_user.user.name
  groups = var.groups
}

resource "aws_iam_user_policy_attachment" "attach_policies" {
  user       = aws_iam_user.user.name
  for_each   = toset(var.policies)
  policy_arn = each.value
}

resource "aws_iam_access_key" "key" {
  user    = aws_iam_user.user.name
  pgp_key = var.pgp_key
}

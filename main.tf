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

resource "aws_iam_user_policy" "inline_policy" {
  count = var.create_policy ? 1 : 0

  name   = "inline_policy"
  user   = aws_iam_user.user.name
  policy = var.policy
}

resource "aws_iam_access_key" "key" {
  user    = aws_iam_user.user.name
  pgp_key = var.pgp_key
}

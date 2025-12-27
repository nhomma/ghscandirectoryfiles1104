resource "aws_iam_policy" "sso_get_permission_set_org" {
  name        = "SSOGetPermissionSetOrg"
  description = "Allows sso:GetPermissionSet on all resources if PrincipalOrgID matches"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Action = "sso:GetPermissionSet"
        Resource = "*"
        Condition = {
          StringEquals = {
            "aws:PrincipalOrgID" = "o-zcfm3iyr1k"
          }
        }
      }
    ]
  })
}

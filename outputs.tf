output "gitlab_url" {
  value = var.gitlab_url
}

output "aws_iam_oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.this.arn
}

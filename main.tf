# get openid configuration from well-known url
data "http" "gitlab_oidc_configuration" {
  url = "${var.gitlab_url}/.well-known/openid-configuration"

  request_headers = {
    Accept = "application/json"
  }
}

# get tls certificate of jwks_uri
data "tls_certificate" "gitlab_jwks_uri" {
  url = jsondecode(data.http.gitlab_oidc_configuration.response_body)["jwks_uri"]
}

# create aws iam oidc provider for gitlab
resource "aws_iam_openid_connect_provider" "this" {
  url = var.gitlab_url

  client_id_list = [
    var.gitlab_url,
  ]

  thumbprint_list = [data.tls_certificate.gitlab_jwks_uri.certificates[0].sha1_fingerprint]
}

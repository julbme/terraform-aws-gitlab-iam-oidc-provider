# GitLab - AWS IAM OIDC Provider Terraform module

Terraform module which creates a AWS IAM OpenID Connect Identity provider for GitLab.

By default, the module is configured for [GitLab.com](https://gitlab.com).

See [GitLab documentation](https://docs.gitlab.com/ee/ci/cloud_services/aws/) to understand how to retrieve AWS temporary credentials from a GitLab CI pipeline.

## Usage

### Create a AWS IAM OIDC provider for GitLab.com

```hcl
module "s3_bucket" {
  source = "julbme/gitlab-iam-oidc-provider/aws"
}
```

### Create a AWS IAM OIDC provider for dedicated GitLab instance.

```hcl
module "s3_bucket" {
  source = "julbme/gitlab-iam-oidc-provider/aws"

  gitlab_url = "https://your-gitlab-instance-url"
}
```

## Authors

Module is maintained by [Julien Baillagou](https://github.com/julb) with help from [these awesome contributors](https://github.com/julbme/terraform-aws-gitlab-iam-oidc-provider/graphs/contributors).

## License

See [LICENSE](LICENSE) for full details.

## Contributing

This project is totally open source and contributors are welcome.
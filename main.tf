terraform {
  cloud {
    organization = "mdx-lib"

    workspaces {
      name = "terraform"
    }
  }
}

module "gh_oidc" {
  source      = "terraform-google-modules/github-actions-runners/google//modules/gh-oidc"
  project_id  = var.project_id
  pool_id     = var.pool_id
  provider_id = var.provider_id
  sa_mapping = {
    "service-account-for-reg-suit-bucket-access-in-github-actions" = {
      sa_name   = var.sa_name
      attribute = "attribute.repository/mdx-lib/mdx-lib"
    }
  }
}
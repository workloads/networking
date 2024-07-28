# The AWS Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#schema
provider "aws" {
  region = var.management_region_aws

  # see https://registry.terraform.io/providers/hashicorp/aws/latest/docs#default_tags
  default_tags {
    tags = {
      "github:url"                 = "https://github.com/workloads/networking"
      "hcp-terraform:organization" = var.tfe_organization
    }
  }
}

# The HCP Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/hcp/latest/docs#schema
provider "hcp" {}

# The HCP Terraform Provider is set to retrieve configuration from the executing environment
# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs#authentication
provider "tfe" {
  hostname        = "app.terraform.io"
  ssl_skip_verify = false
}

# The TFE Provider is set to retrieve configuration from `variables.tf` and the environment
# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs
provider "tfe" {
  alias = "viewer"

  hostname        = "app.terraform.io"
  ssl_skip_verify = false
  token           = var.tfe_team_token_viewers
}

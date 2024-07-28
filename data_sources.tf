# retrieve information about the Default VPC for the selected `aws_region`
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc
data "aws_vpc" "default" {
  default = true
  state   = "available"
}

# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/variable_set
data "tfe_variable_set" "hvn_ids" {
  name         = "HashiCorp Cloud Platform Network IDs"
  organization = var.tfe_organization
}

# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/workspace
data "tfe_workspace" "main" {
  name         = "networking"
  organization = var.tfe_organization
}

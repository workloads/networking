# retrieve information about the Default VPC for the selected `aws_region`
# see https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc
data "aws_vpc" "default" {
  default = true
  state   = "available"
}

# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/variable_set
data "tfe_variable_set" "project" {
  name         = "Project"
  organization = var.tfe_organization
}

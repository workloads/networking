# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable
resource "tfe_variable" "hvn_id_aws" {
  key             = "hvn_id_aws"
  value           = module.hvn_aws.hcp_hvn.hvn_id
  category        = "terraform"
  description     = "The ID of the HVN this HCP Vault cluster is associated to."
  variable_set_id = data.tfe_variable_set.project.id
}

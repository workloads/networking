output "aws_vpc" {
  description = "Exported Attributes for `aws_vpc.current` data source."
  value       = data.aws_vpc.default
}

output "hvn_urls" {
  description = "HCP HVN URLs."

  value = [
    module.hvn_aws.portal_hvn_overview_url,
    module.hvn_aws.portal_hvn_peering_url,
    module.hvn_aws.portal_hvn_route_table_url,
  ]
}

output "tfe_workspace_terraform_version" {
  description = "Terraform version identifier of current HCP Terraform Workspace."
  value       = data.tfe_workspace.main.terraform_version
}

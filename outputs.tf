output "aws_iam_account_alias" {
  description = "Exported Attributes for `aws_iam_account_alias.current` data source."
  value       = data.aws_iam_account_alias.current
}

output "aws_vpc_id" {
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

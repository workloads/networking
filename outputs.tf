output "aws_iam_account_alias" {
  description = "current AWS IAM Account Alias."
  value       = data.aws_iam_account_alias.current.id
}

output "aws_vpc_id" {
  description = "current AWS Default VPC Identifier."
  value       = data.aws_vpc.default.id
}

output "hvn_urls" {
  description = "HCP HVN URLs."

  value = [
    module.hvn_aws.portal_hvn_overview_url,
    module.hvn_aws.portal_hvn_peering_url,
    module.hvn_aws.portal_hvn_route_table_url,
  ]
}

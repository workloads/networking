module "hvn_aws" {
  # see https://registry.terraform.io/modules/ksatirli/hvn-aws/hcp/1.0.1
  source  = "ksatirli/hvn-aws/hcp"
  version = "1.0.1"

  identifier      = "${var.project_identifier}-aws-${var.management_region_aws}"
  cidr_block      = var.hvn_cidr_block_aws
  peer_account_id = data.aws_vpc.default.owner_id
  peer_vpc_id     = data.aws_vpc.default.id
  region          = var.management_region_aws
}

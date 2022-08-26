module "hvn_aws" {
  source  = "ksatirli/hvn-aws/hcp"
  version = "1.0.1"

  identifier      = "aws-${data.aws_iam_account_alias.current.id}"
  cidr_block      = var.hvn_cidr_block_aws
  peer_account_id = data.aws_vpc.default.owner_id
  peer_vpc_id     = data.aws_vpc.default.id
  region          = var.management_region_aws
}

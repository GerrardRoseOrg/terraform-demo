#########################
# Core VPC
#########################

module "vpc" {
  source   = "git::https://github.com/GerrardRoseOrg/terraform-demo-modules.git//network/vpc?ref=main"
#   source = "../terraform-demo-modules/network/vpc"

  account_type             = var.account_type
  env                      = var.env
  name                     = var.name
  
}
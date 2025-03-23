#########################
# Core VPC
#########################

module "vpc" {
  source   = "git::https://github.com/GerrardRoseOrg/terraform-demo-modules.git//network/vpc?ref=main"
  # source = "../terraform-demo-modules/network/vpc"

  account_type             = var.account_type
  env                      = var.env
  name                     = var.name
  availability_zones       = var.availability_zones // Added to support var.availability_zones
  ipv4_primary_cidr_block  = var.ipv4_primary_cidr_block // Added to support var.ipv4_primary_cidr_block
  
}
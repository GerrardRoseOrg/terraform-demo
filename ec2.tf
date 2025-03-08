#########################
# Web Server
#########################

module "web_server" {
  source   = "git::https://github.com/GerrardRoseOrg/terraform-demo-modules.git//ec2_instances?ref=main"
  # source = "../terraform-demo-modules/ec2_instances"
  
#   for_each = toset(var.web_server_count)
#   name                        = each.value

  name                        = "web-server"
  account_type                = var.account_type
  env                         = var.env
  vpc_id                      = module.vpc.vpc_id
  subnet_id                   = module.vpc.public_subnet_ids[0]
  instance_type               = var.web_server_instance_type
  ec2_ami                     = var.web_server_ami
  ssh_key_pair                = var.ssh_key_pair

}
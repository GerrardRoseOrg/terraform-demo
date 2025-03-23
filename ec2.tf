#########################
# Web Server
#########################

module "web_server" {
  source   = "git::https://github.com/GerrardRoseOrg/terraform-demo-modules.git//ec2_instances?ref=main"
  # source = "../terraform-demo-modules/ec2_instances"
  
  for_each = toset(var.web_server_count)  // This will create multiple EC2 instances based on the count in variables.tfvars

  name                        = each.value
  account_type                = var.account_type
  env                         = var.env
  vpc_id                      = module.vpc.vpc_id
  subnet_id                   = module.vpc.public_subnet_ids[0]
  instance_type               = var.web_server_instance_type
  ec2_ami                     = var.web_server_ami
  security_groups             = [module.web_server_sg.id]
  associate_public_ip_address = true
  ssh_key_pair                = var.ssh_key_pair
  user_data_base64 = base64encode(templatefile("${path.module}/templates/userdata/web_server/userdata_${var.env}.xml.tmpl", {
    account_type = var.account_type
    region = var.region
    env = var.env
    name = each.value
  }))
}
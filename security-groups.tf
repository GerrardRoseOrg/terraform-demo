module "web_server_sg" {
  source = "cloudposse/security-group/aws"
  version = "2.2.0"
  
  attributes = ["${var.account_type}-${var.env}", "web-server-sg"]
  security_group_description = "Web Server security group"
  vpc_id  = module.vpc.vpc_id
  allow_all_egress = true

  rules = [
    {
      key         = "HTTP"
      type        = "ingress"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
      description = "Allow HTTP from Anywhere"
    },
    {
      key         = "HTTPS"
      type        = "ingress"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      # cidr_blocks = ["0.0.0.0/0"]
      cidr_blocks = ["82.22.173.9/32"] # adding comment, add something else, and one more thing!
      description = "Allow HTTPS from Anywhere"
    }
  ]
  
  create_before_destroy = true
  preserve_security_group_id = true
}

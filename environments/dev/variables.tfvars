# Dev environment variables
region = "eu-west-1"
account = "242201275537"  // Add your Development AWS account number
account_type = "app-name"
env = "dev"
name = "demo"

# Network
ipv4_primary_cidr_block = "10.0.0.0/16"  // Added to support var.ipv4_primary_cidr_block
availability_zones = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]  // Added to support var.availability_zones

## EC2 instances
// Shared
ssh_key_pair = "terraform-demo-dev-key-pair"

// Web Server
web_server_count = []# ["web-server-1"]  // Value [] would create zero, value ["web-server-1", "web-server-2"] would create two
web_server_instance_type = "t3.micro"
web_server_ami = "ami-08f9a9c699d2ab3f9"  // This is Amazon Linux in eu-west-1

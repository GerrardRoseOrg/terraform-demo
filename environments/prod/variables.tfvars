# Prod variables
region = "eu-west-2"
account = "302263057374"  // Add your Production AWS account number
account_type = "app-name"
env = "prod"
name = "demo"

# Network
ipv4_primary_cidr_block = "10.1.0.0/16"  // Added to support var.ipv4_primary_cidr_block
availability_zones = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]  // Added to support var.availability_zones

## EC2 instances
// Shared
ssh_key_pair = "terraform-demo-prod-key-pair"

// Web Server
web_server_count = []# ["web-server-1"]  // Value [] would create zero, value ["web-server-1", "web-server-2"] would create two
web_server_instance_type = "t3.micro"
web_server_ami = "ami-0e56583ebfdfc098f"  // This is Amazon Linux in eu-west-2



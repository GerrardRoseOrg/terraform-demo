# output "web_server_public_dns" {
#   description = "The public DNS name of the web servers"
#     value       = module.web_server[*].ec2_public_dns
# }

output "web_server_public_dns" {
  description = "The public DNS names of the web servers"
  value       = [for instance in module.web_server : instance.ec2_public_dns]
}

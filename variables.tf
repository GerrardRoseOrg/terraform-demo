variable "account" {
  type        = string
  description = "account"
}

variable "region" {
  type        = string
  description = "AWS region"
}

variable "name" {
  type        = string
  description = "Function name"
}

variable "account_type" {
  type        = string
  description = "account_type"
}

variable "env" {
  type        = string
  description = "Environment name"
}

#########################
# Network
#########################
variable "availability_zones" {   // Added to support var.availability_zones
  type        = list(string)
  description = "availability_zones"
}

variable "ipv4_primary_cidr_block" {   // Added to support var.ipv4_primary_cidr_block
  type        = string
  description = "ipv4_primary_cidr_block"
}

#########################
# EC2 Servers
#########################
// Shared
variable "ssh_key_pair" {
  type        = string
  description = "EC2 key pair"
}

// Web Server
variable "web_server_count" {
  type        = list(string)
  description = "Number of EC2 Web Servers"
}

variable "web_server_instance_type" {
  type        = string
  description = "EC2 Web Server instance type"
}

variable "web_server_ami" {
  type        = string
  description = "EC2 AMI"
}

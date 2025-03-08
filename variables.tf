

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

## EC2 instances
// Shared
variable "ssh_key_pair" {
  type        = string
  description = "EC2 key pair"
}

// Web Server
variable "web_server_instance_type" {
  type        = string
  description = "EC2 Web Server instance type"
}

variable "web_server_ami" {
  type        = string
  description = "EC2 AMI"
}



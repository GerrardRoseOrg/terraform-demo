terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    awsutils = {
      source  = "cloudposse/awsutils"
      version = ">= 0.11.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }

  required_version = ">= 1.5.4"


}

provider "aws" {
  region = var.region
  assume_role {
    role_arn     = "arn:aws:iam::${var.account}:role/terraform-demo-role"
    session_name = "TERRAFORM_DEMO"
    duration     = "1h"
  }

  default_tags {
    tags = {
      "Environment"  = var.env
      "Product"      = var.account_type
      "Terraform"    = "true"
    }
  }

}
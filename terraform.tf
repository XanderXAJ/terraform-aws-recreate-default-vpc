terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.11.0"
    }
  }

  required_version = "~> 1.5"

  cloud {
    organization = "xanderxaj"
    workspaces {
      name = "aws-recreate-default-vpc"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_default_vpc" "default" {}

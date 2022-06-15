terraform {
required_providers {
  aws = {
    source = "hashicorp/aws"
  }
}
}

provider "aws" {
  region = var.region
}

module "prj19" {
  source  = "donhasmo/terraform-aws-prj19"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

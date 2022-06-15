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
  source  = "app.terraform.io/ATech/prj19/aws"
  name   = var.name
  region = var.region
  prefix = var.prefix
  version = "1.0.0"
}

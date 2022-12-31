provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "SLIB53Playground"
      Origin  = var.origin
    }
  }
}

module "playwright" {
  source = "./modules/playwright"

  vpc_cidr_block = var.playwright_vpc_cidr_block
}

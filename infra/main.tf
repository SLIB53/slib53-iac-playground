provider "aws" {
  region = "us-east-1"
}

module "chitchat" {
  source = "./modules/chitchat"

  vpc_cidr_block = var.chitchat_vpc_cidr_block
}

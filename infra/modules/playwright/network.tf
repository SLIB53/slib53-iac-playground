resource "aws_vpc" "playwright" {
  cidr_block = var.vpc_cidr_block
}

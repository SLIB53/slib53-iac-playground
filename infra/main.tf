provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "SLIB53Playground"
      Origin  = var.origin
      Owner   = var.owner
    }
  }
}

module "playwright" {
  source = "./modules/playwright"

  playwright_subnet_ids = [
    aws_subnet.playwright_a.id,
    aws_subnet.playwright_b.id,
    aws_subnet.playwright_c.id,
    aws_subnet.playwright_d.id,
    aws_subnet.playwright_e.id,
    aws_subnet.playwright_f.id
  ]

  playwright_database_log_group_name = aws_cloudwatch_log_group.playwright_database.name
}

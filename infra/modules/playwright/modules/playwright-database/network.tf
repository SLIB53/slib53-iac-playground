resource "aws_elasticache_subnet_group" "playwright_database" {
  name        = "playwright-database"
  description = "The subnets for the playwright database cluster"

  subnet_ids = var.playwright_database_subnet_ids
}

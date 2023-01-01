module "playwright-database" {
  source = "./modules/playwright-database"

  playwright_database_subnet_ids = var.playwright_subnet_ids

  playwright_database_log_group_name = var.playwright_database_log_group_name
}

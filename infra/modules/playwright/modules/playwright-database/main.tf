resource "aws_elasticache_replication_group" "playwright_database" {
  replication_group_id = "playwright-database"
  description          = "The main database for the playwright application"

  apply_immediately = true

  node_type            = "cache.t4g.micro"
  parameter_group_name = "default.redis7.cluster.on"
  port                 = 6379

  multi_az_enabled           = true
  automatic_failover_enabled = true

  num_node_groups         = 1
  replicas_per_node_group = 1

  subnet_group_name = aws_elasticache_subnet_group.playwright_database.name

  at_rest_encryption_enabled = true
  transit_encryption_enabled = true

  log_delivery_configuration {
    destination      = var.playwright_database_log_group_name
    destination_type = "cloudwatch-logs"
    log_format       = "text"
    log_type         = "slow-log"
  }
}

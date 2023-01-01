resource "aws_cloudwatch_log_group" "playwright_database" {
  name = var.playwright_database_log_group_name
}

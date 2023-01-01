variable "playwright_database_subnet_ids" {
  description = "The subnet IDs to use for the playwright database"
  type        = list(string)
}

variable "playwright_database_log_group_name" {
  description = "The log group to use for the playwright database"
  type        = string
}

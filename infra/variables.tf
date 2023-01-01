variable "environment" {
  description = <<-EOF
  The environment of the deployed resources

  This is used to tag all resources with the environment.

  Valid values: Development, Test, Production
  EOF

  type = string

  validation {
    condition = contains(
      ["Development", "Test", "Production"],
      var.environment
    )

    error_message = "The environment must be Development, Test, or Production."
  }
}

variable "origin" {
  description = <<-EOF
  The context which manages the deployment

  This is used to tag all resources with the origin, but the exact string is preferred when
  referencing an external resource, project, etc.

  Examples: Local, my-s3-bucket
  EOF

  type = string
}

variable "owner" {
  description = <<-EOF
  The owner of the deployment

  This is used to tag all resources with the owner, therefore it is recommended to use CamelCase.

  Example: FirstNameLastName
  EOF

  type = string
}

variable "playwright_vpc_cidr_block" {
  description = "The CIDR block for the playwright VPC"

  type = string

  default = "10.0.0.0/16"
}

variable "playwright_subnet_a_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the a availability zone.
  EOF

  type = string

  default = "10.0.0.0/24"
}

variable "playwright_subnet_b_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the b availability zone.
  EOF

  type = string

  default = "10.0.1.0/24"
}

variable "playwright_subnet_c_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the c availability zone.
  EOF

  type = string

  default = "10.0.2.0/24"
}

variable "playwright_subnet_d_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the d availability zone.
  EOF

  type = string

  default = "10.0.3.0/24"
}

variable "playwright_subnet_e_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the e availability zone.
  EOF

  type = string

  default = "10.0.4.0/24"
}

variable "playwright_subnet_f_cidr_block" {
  description = <<-EOF
  One of the main CIDR blocks for the playwright subnet,
  designated for the f availability zone.
  EOF

  type = string

  default = "10.0.5.0/24"
}

variable "playwright_database_log_group_name" {
  description = "The log group to use for the playwright database"

  type = string

  default = "/aws/elasticache/cluster/playwright-database"
}

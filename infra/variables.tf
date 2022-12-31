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

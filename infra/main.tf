provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Project = "SLIB53"

      Environment = "Root"
      Owner       = "Root"

      Provisioner = "Terraform"
    }
  }
}

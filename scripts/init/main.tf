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

resource "aws_s3_bucket" "slib53_iac_tfstate" {
  bucket = "slib53-iac-tfstate"
}

resource "aws_s3_bucket_versioning" "slib53_iac_tfstate" {
  bucket = aws_s3_bucket.slib53_iac_tfstate.id

  versioning_configuration {
    status     = "Enabled"
  }
}

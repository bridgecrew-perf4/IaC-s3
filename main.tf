# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Caprica"

    workspaces {
      name = "backups3bucket"
    }
  }
}


provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}

resource "aws_s3_bucket" "backup-s3" {
    bucket = "caprica-doc-bkp"

    acl = "private"
    tags = {
      Name        = "Caprica backups"
      Environment = "Dev"
  }
}

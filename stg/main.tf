terraform {
  required_version = ">= 1.12.2"

  backend "remote" {
    organization = "higakikeita-org"  # Terraform CloudのOrganization名に変更
    workspaces {
      name = "example-stg"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket        = "tfc-demo-${var.env}"
  force_destroy = true
  tags = {
    Environment = var.env
  }
}

output "bucket_name" {
  value = aws_s3_bucket.example.id
}


terraform {
  required_version = ">= 1.5.0"

  backend "remote" {
    organization = "higakikeita-org"  # Terraform CloudのOrganization名に変更
    workspaces {
      name = "example-dev"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket        = "example-bucket-${terraform.workspace}"
  force_destroy = true
}

output "bucket_name" {
  value = aws_s3_bucket.example.id
}


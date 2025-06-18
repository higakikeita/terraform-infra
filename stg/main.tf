terraform {
  required_version = ">= 1.12.2"
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



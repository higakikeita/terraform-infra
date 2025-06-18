terraform {
  required_version = ">= 1.12.2"
  backend "remote" {
    organization = "higakikeita-org"

    workspaces {
      name = "example-prd"
    }
  }
}


variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "env" {
  type    = string
  default = "dev"  # ← stg/prdではそれぞれ変更
}


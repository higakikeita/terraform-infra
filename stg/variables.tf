variable "region" {
  type    = string
  default = "ap-northeast-1"
}

variable "env" {
  type    = string
  default = "stg"  # ← stg/prdではそれぞれ変更
}


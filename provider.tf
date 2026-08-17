# 테라폼 자체 설정(terraform 블록)과, 사용할 클라우드 플러그인의 인증 및 엔드포인트 설정(provider 블록)을 담는 파일

terraform {
  required_version = ">= 1.5"

  required_providers {
    ncloud = {
      source  = "NaverCloudPlatform/ncloud"
      version = "~> 4.0"
    }
  }
}

provider "ncloud" {
  access_key  = var.access_key
  secret_key  = var.secret_key
  region      = var.region
  site        = var.site
  support_vpc = true
}
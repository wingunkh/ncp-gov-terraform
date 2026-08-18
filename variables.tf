# 모듈이 외부로부터 주입받는 값을 variable 블록으로 선언하는 파일

variable "access_key" {
  description = "NCP API Access Key"
  type        = string
  sensitive   = true
}

variable "secret_key" {
  description = "NCP API Secret Key"
  type        = string
  sensitive   = true
}

variable "region" {
  description = "NCP 리전 코드"
  type        = string
  default     = "KR"
}

variable "site" {
  description = "NCP 사이트 구분 (public / gov / fin)"
  type        = string
  default     = "gov"
}

variable "name_prefix" {
  description = "리소스 이름 접두사"
  type        = string
  default     = "khg"
}

variable "zone" {
  description = "가용 존"
  type        = string
  default     = "KR-1"
}

variable "vpc_cidr" {
  description = "VPC IPv4 CIDR 블록"
  type        = string
  default     = "10.12.0.0/16"
}

variable "public_subnet_cidr" {
  description = "퍼블릭 서브넷 CIDR"
  type        = string
  default     = "10.12.1.0/24"
}

variable "private_subnet_cidr" {
  description = "프라이빗 서브넷 CIDR"
  type        = string
  default     = "10.12.2.0/24"
}
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
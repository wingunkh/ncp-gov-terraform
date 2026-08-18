# ── 인증 ──────────────────────────────────────────────

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

# ── 환경 ──────────────────────────────────────────────

variable "site" {
  description = "NCP 사이트 구분 (public / gov / fin)"
  type        = string
  default     = "gov"

  validation {
    condition     = contains(["public", "gov", "fin"], var.site)
    error_message = "site 값은 public, gov, fin 중 하나여야 합니다."
  }
}

variable "region" {
  description = "NCP 리전 코드"
  type        = string
  default     = "KR"
}

variable "zone" {
  description = "가용 존 (공공 KR 리전은 KR-1 단일)"
  type        = string
  default     = "KR-1"
}

variable "name_prefix" {
  description = "리소스 이름 접두사"
  type        = string
  default     = "khg"
}

# ── 네트워크 ──────────────────────────────────────────────

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
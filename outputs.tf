# 모듈이 생성 및 관리하는 리소스의 속성 중 외부로 노출할 값을 output 블록으로 선언하는 파일

output "vpc_id" {
  description = "생성된 VPC 번호"
  value       = ncloud_vpc.main.id
}

output "vpc_cidr" {
  description = "VPC CIDR 블록"
  value       = ncloud_vpc.main.ipv4_cidr_block
}

output "default_network_acl_no" {
  description = "VPC 생성 시 자동 생성된 기본 Network ACL 번호"
  value       = ncloud_vpc.main.default_network_acl_no
}

output "default_acg_no" {
  description = "VPC 생성 시 자동 생성된 기본 ACG 번호"
  value       = ncloud_vpc.main.default_access_control_group_no
}

output "public_subnet_id" {
  value = ncloud_subnet.public.id
}

output "private_subnet_id" {
  value = ncloud_subnet.private.id
}
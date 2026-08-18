# provider를 통해 생성 및 관리할 인프라 객체를 resource 블록으로 정의하는 파일

# ── VPC ──────────────────────────────────────────────
resource "ncloud_vpc" "main" {
  name            = "${var.name_prefix}-vpc"
  ipv4_cidr_block = var.vpc_cidr
}

# ── Public Subnet ────────────────────────────────────
resource "ncloud_subnet" "public" {
  vpc_no         = ncloud_vpc.main.id
  name           = "${var.name_prefix}-pub-sub"
  subnet         = var.public_subnet_cidr
  zone           = var.zone
  network_acl_no = ncloud_vpc.main.default_network_acl_no
  subnet_type    = "PUBLIC"
  usage_type     = "GEN"
}

# ── Private Subnet ───────────────────────────────────
resource "ncloud_subnet" "private" {
  vpc_no         = ncloud_vpc.main.id
  name           = "${var.name_prefix}-pri-sub"
  subnet         = var.private_subnet_cidr
  zone           = var.zone
  network_acl_no = ncloud_vpc.main.default_network_acl_no
  subnet_type    = "PRIVATE"
  usage_type     = "GEN"
}
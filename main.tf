resource "aws_wafv2_ip_set" "wafv2_ip_set" {
  name = var.name
  description = var.description
  scope = var.scope
  ip_address_version = var.ip_address_version
  addresses = var.addresses
  tags = var.tags
}


output "id" {
  value = aws_wafv2_ip_set.wafv2_ip_set.id
  description = "The ID of the WAF IPSet."
}

output "arn" {
  value = aws_wafv2_ip_set.wafv2_ip_set.arn
  description = "The ARN of the WAF IPSet."
}

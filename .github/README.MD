# Terraflops Terraform Module
 
### AWS WAFv2 IP Set

Allows the creation of the AWS WAFv2 IP Set resource.

This can be directly applied to the WAFv2 Web ACL for rate limiting IP Addresses.

#### Example usage

```hcl-terraform
module "facebook_ip_set" {
  source = "git::https://github.com/TerraFlops/aws-waf-v2-ip-set?ref=v1.2"
  providers = {
    aws = aws.us_east_1
  }

  name = "facebook-ip-set"
  description = "Facebook IP Set"
  addresses = [
    "157.240.8.35/32"
  ]
  ip_address_version = "IPV4"
  scope = "CLOUDFRONT"
}
```
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| addresses | Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6. | `list(string)` | n/a | yes |
| description | A friendly description of the IP set. | `string` | n/a | yes |
| ip\_address\_version | Specify IPV4 or IPV6. Valid values are IPV4 or IPV6 | `string` | `"IPV4"` | no |
| name | A friendly name of the IP set. | `string` | n/a | yes |
| scope | Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the Region US East (N. Virginia) | `string` | `"CLOUDFRONT"` | no |
| tags | A map of tags (key-value pairs) passed to resources. | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | The ARN of the WAF IPSet. |
| id | The ID of the WAF IPSet. |


variable "name" {
  type = string
  description = "A friendly name of the IP set."
}

variable "description" {
  type = string
  description = "A friendly description of the IP set."
}

variable "scope" {
  type = string
  description = "Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are CLOUDFRONT or REGIONAL. To work with CloudFront, you must also specify the Region US East (N. Virginia)"
}

variable "ip_address_version" {
  type = string
  description = "Specify IPV4 or IPV6. Valid values are IPV4 or IPV6"
}

variable "addresses" {
  type = list(string)
  description = "Contains an array of strings that specify one or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports all address ranges for IP versions IPv4 and IPv6."
}

variable "tags" {
  type = list(map(string))
  description = "An array of key:value pairs to associate with the resource."
}

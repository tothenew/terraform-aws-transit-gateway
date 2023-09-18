variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "vpc_attachments" {
  description = "List of VPC configurations to attach to the Transit Gateway."
  type = list(object({
    vpc_id             = string
    subnet_ids         = list(string)
    dns_support        = string
    ipv6_support       = string
    additional_tags    = map(string)
  }))
}

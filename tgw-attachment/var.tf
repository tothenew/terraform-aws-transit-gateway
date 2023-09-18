variable "vpc_attachments" {
  description = "List of VPC configurations to attach to the Transit Gateway."
  type = list(object({
    vpc_id             = string
    subnet_ids         = list(string)
    dns_support                                     = string
    ipv6_support                                    = string
    # appliance_mode_support                          = bool
    # transit_gateway_default_route_table_association = bool
    # transit_gateway_default_route_table_propagation = bool
    additional_tags                                 = map(string)
  }))
  default = []
}

variable "transit_gateway_id" {
    type    =   string
}

variable "tags" {
  description = "A map of tags to apply to resources."
  type        = map(string)
  default     = {}
}

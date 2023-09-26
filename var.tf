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
<<<<<<< HEAD
=======

variable "create_tgw_route_table" {
  description = "Boolean to determine if a new Transit Gateway Route Table should be created."
  type        = bool
  default     = false
}

variable "create_tgw_routes" {
  description = "Boolean to determine if Transit Gateway Routes should be created."
  type        = bool
  default     = false
}

variable "tgw_routes" {
  description = "List of routes to be added to the Transit Gateway Route Table."
  type = list(object({
    destination_cidr_block = string
    blackhole              = bool
  }))
  default = []
}

variable "transit_gateway_attachment_id" {
  description = "ID of the Transit Gateway VPC Attachment"
  type        = string
}

variable "transit_gateway_route_table_id" {
  description = "ID of the Transit Gateway Route Table"
  type        = string
}
>>>>>>> 59253ee (added routes)

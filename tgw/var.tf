variable "amazon_side_asn" {
  description = "The private Autonomous System Number (ASN) for the Amazon side of a BGP session."
  type        = number
  default     = null
}

variable "name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}
provider "aws" {
  region = "us-east-1"
}

module "tgw_attachment" {
  source = "../../tgw-attachment"

  transit_gateway_id = "tgw-0123456789"  

  vpc_attachments = [
    {
      vpc_id      = "vpc-0123456789"
      subnet_ids  = ["subnet-0123456789", "subnet-1234567678"]
      dns_support = "enable"
      ipv6_support = "disable"
      additional_tags = {
        Name = "tgw-attachment-example"
      }
    }
  ]
}

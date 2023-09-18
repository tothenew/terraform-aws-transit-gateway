module "transit_gateway" {
    source = "./tgw"
}

module "transit_gateway_vpc_attachments" {
  source = "./tgw-attachment"
  transit_gateway_id    =   module.transit_gateway.transit_gateway_id
  vpc_attachments = [
    {
      vpc_id       = "vpc-02b6dfe8702127582"
      subnet_ids   = ["subnet-044e025aace130945"]
      dns_support  = "enable"
      ipv6_support = "disable"
      additional_tags = {
        Name = "MyVPC1Attachment"
      }
    },
    {
      vpc_id       = "vpc-07148506b764133b6"
      subnet_ids   = ["subnet-0d2f854b3e21392d3"]
      dns_support  = "enable"
      ipv6_support = "disable"
      additional_tags = {
        Name = "MyVPC2Attachment"
      }
    }
  ]
}
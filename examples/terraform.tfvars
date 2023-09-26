name = "tgw-1"

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


#-----> User Defined New Routes apart from Default <-------
create_tgw_route_table      = false
create_tgw_routes           = false
tgw_routes = [
  {
    destination_cidr_block = "10.0.0.0/16"
    blackhole              = false
  }
]

transit_gateway_route_table_id  = "XXXXXXXXXXXX"
transit_gateway_attachment_id   = "XXXXXXXXXXXX"


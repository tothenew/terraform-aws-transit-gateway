name = "tgw-1"

vpc_attachments = [
  {
    vpc_id       = "vpc-0cc47f535e7bdfd8b"
    subnet_ids   = ["subnet-0aca4c58f1efb3a9e"]
    dns_support  = "enable"
    ipv6_support = "disable"
    additional_tags = {
      Name = "Dhruv-VPC1Attachment"
    }
  },
  {
    vpc_id       = "vpc-02f0726a4f7047207"
    subnet_ids   = ["subnet-082eb5afa4ab3b241"]
    dns_support  = "enable"
    ipv6_support = "disable"
    additional_tags = {
      Name = "default-VPC2Attachment"
    }
  }
]

#-----> User Defined New Routes apart from Default <-------
create_tgw_route_table      = false
create_tgw_routes           = false
tgw_routes = [
  {
    destination_cidr_block = "172.31.0.0/16"
    blackhole              = false
  }
]

transit_gateway_route_table_id  = "tgw-rtb-00bdb5d524848370c"
transit_gateway_attachment_id   = "tgw-05a990ea9e7838e4b"

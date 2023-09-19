module "transit_gateway" {
    source              = "./tgw"
}

module "transit_gateway_vpc_attachments" {
  source                = "./tgw-attachment"
  transit_gateway_id    =   module.transit_gateway.transit_gateway_id
  vpc_attachments       = var.vpc_attachments
}

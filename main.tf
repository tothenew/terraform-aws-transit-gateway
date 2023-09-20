module "transit_gateway" {
    source              = "./tgw"
}

module "transit_gateway_vpc_attachments" {
  source                = "./tgw-attachment"
  transit_gateway_id    =   module.transit_gateway.transit_gateway_id
<<<<<<< HEAD
  vpc_attachments       = var.vpc_attachments
}
=======
  vpc_attachments    = var.vpc_attachments
}

module "tgw_routes" {
  source = "./tgw-routes"
  create_tgw_route_table          = var.create_tgw_route_table
  create_tgw_routes               = var.create_tgw_routes
  tgw_routes                      = var.tgw_routes
  transit_gateway_id              = module.transit_gateway.transit_gateway_id
  transit_gateway_attachment_id   = var.transit_gateway_attachment_id
  transit_gateway_route_table_id  = var.transit_gateway_route_table_id
}
>>>>>>> 59253ee (added routes)

module "tgw_routes" {
  source = "../../tgw-routes"

  create_tgw_route_table         = var.create_tgw_route_table
  create_tgw_routes              = var.create_tgw_routes
  transit_gateway_id             = var.transit_gateway_id
  transit_gateway_attachment_id  = var.transit_gateway_attachment_id
  transit_gateway_route_table_id = var.transit_gateway_route_table_id

  tgw_routes = var.tgw_routes
}

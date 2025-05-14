module "tgw_routes" {
  source = "../../tgw-routes"

  create_tgw_route_table         = true
  create_tgw_routes              = true
  transit_gateway_id             = "tgw-0123456789"
  transit_gateway_attachment_id  = "tgw-attach-0123456789"
  transit_gateway_route_table_id = "tgw-rtb-0123456789"

  tgw_routes = [
    {
      destination_cidr_block         = "10.0.0.0/16"
      transit_gateway_attachment_id  = "tgw-attach-0123456789"
      blackhole                      = false
    },
    {
      destination_cidr_block         = "192.168.0.0/16"
      transit_gateway_attachment_id  = "tgw-attach-9876543210"
      blackhole                      = false
    }
  ]
}

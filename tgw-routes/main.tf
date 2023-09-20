resource "aws_ec2_transit_gateway_route_table" "this" {
  count = var.create_tgw_route_table ? 1 : 0
  transit_gateway_id = var.transit_gateway_id
  
}

resource "aws_ec2_transit_gateway_route" "this" {
  count = var.create_tgw_routes ? length(var.tgw_routes) : 0

  destination_cidr_block = var.tgw_routes[count.index].destination_cidr_block
  blackhole              = var.tgw_routes[count.index].blackhole

  transit_gateway_route_table_id = var.transit_gateway_route_table_id
  transit_gateway_attachment_id  = !var.tgw_routes[count.index].blackhole ? var.transit_gateway_attachment_id : null
}




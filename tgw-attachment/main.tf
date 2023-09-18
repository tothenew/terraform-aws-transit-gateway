resource "aws_ec2_transit_gateway_vpc_attachment" "vpc_attachment" {
  count = length(var.vpc_attachments)

  transit_gateway_id = var.transit_gateway_id
  vpc_id             = var.vpc_attachments[count.index].vpc_id
  subnet_ids         = var.vpc_attachments[count.index].subnet_ids

  dns_support                                     = var.vpc_attachments[count.index].dns_support
  ipv6_support                                    = var.vpc_attachments[count.index].ipv6_support

  tags = merge(
    var.tags,
    var.vpc_attachments[count.index].additional_tags
  )
}
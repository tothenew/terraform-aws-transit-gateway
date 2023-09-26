resource "aws_ec2_transit_gateway" "tgw" {
  description = "Transit Gateway 1"
  amazon_side_asn = try(var.amazon_side_asn, null)
  tags = {
        Name = var.name
    }
}



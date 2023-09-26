output "vpc_attachment_ids" {
  description = "Map of VPC attachment IDs."
  value       = { for k, v in aws_ec2_transit_gateway_vpc_attachment.vpc_attachment : k => v.id }
}


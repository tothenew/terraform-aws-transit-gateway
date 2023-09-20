# terraform-aws-template

[![Lint Status](https://github.com/tothenew/terraform-aws-template/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-template/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-template)](https://github.com/tothenew/terraform-aws-template/blob/master/LICENSE)

This is a template to use for baseline. The default actions will provide updates for section bitween Requirements and Outputs.

The following content needed to be created and managed:
 - Introduction
     - The primary module (tgw) creates a Transit Gateway, while the secondary module (tgw-attachment) handles the attachment of VPCs to this Transit Gateway.Explaination of module 
     - This module is intended for AWS users looking to simplify the management of Transit Gateways and their associated VPC attachments.
 - AWS Transit Gateway (tgw)
AWS Transit Gateway VPC Attachments (tgw-attachment)
 - To utilize this module, specify the desired VPCs for attachment in the variables.tfvars file, and then apply the Terraform configuration. Detailed usage instructions are provided in the Usage section of this README.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Providers
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [aws](#requirement\_terraform) | ...... |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_tgw_routes"></a> [tgw\_routes](#module\_tgw\_routes) | ./tgw-routes | n/a |
| <a name="module_transit_gateway"></a> [transit\_gateway](#module\_transit\_gateway) | ./tgw | n/a |
| <a name="module_transit_gateway_vpc_attachments"></a> [transit\_gateway\_vpc\_attachments](#module\_transit\_gateway\_vpc\_attachments) | ./tgw-attachment | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_tgw_route_table"></a> [create\_tgw\_route\_table](#input\_create\_tgw\_route\_table) | Boolean to determine if a new Transit Gateway Route Table should be created. | `bool` | `false` | no |
| <a name="input_create_tgw_routes"></a> [create\_tgw\_routes](#input\_create\_tgw\_routes) | Boolean to determine if Transit Gateway Routes should be created. | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name to be used on all the resources as identifier | `string` | `""` | no |
| <a name="input_tgw_routes"></a> [tgw\_routes](#input\_tgw\_routes) | List of routes to be added to the Transit Gateway Route Table. | <pre>list(object({<br>    destination_cidr_block = string<br>    blackhole              = bool<br>  }))</pre> | `[]` | no |
| <a name="input_transit_gateway_attachment_id"></a> [transit\_gateway\_attachment\_id](#input\_transit\_gateway\_attachment\_id) | ID of the Transit Gateway VPC Attachment | `string` | n/a | yes |
| <a name="input_transit_gateway_route_table_id"></a> [transit\_gateway\_route\_table\_id](#input\_transit\_gateway\_route\_table\_id) | ID of the Transit Gateway Route Table | `string` | n/a | yes |
| <a name="input_vpc_attachments"></a> [vpc\_attachments](#input\_vpc\_attachments) | List of VPC configurations to attach to the Transit Gateway. | <pre>list(object({<br>    vpc_id             = string<br>    subnet_ids         = list(string)<br>    dns_support        = string<br>    ipv6_support       = string<br>    additional_tags    = map(string)<br>  }))</pre> | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-template/blob/main/LICENSE) for full details.

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

Transit Gateway (./tgw)
<br>VPC Attachments (./tgw-attachment)

## Resources

AWS Transit Gateway
<br>AWS Transit Gateway VPC Attachment

## Inputs

| Name | Description | Type |
|------|-------------|------|
| transit_gateway_id |	ID of the Transit Gateway in the Attachment module |	string |
| vpc_attachments |	List of VPC configurations for attachment |	list |

## Outputs

| Name | Description |
|------|-------------|
| transit_gateway_id |	ID of the created Transit Gateway |
| vpc_attachment_ids |	Map of VPC attachment IDs |

## Authors

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-template/blob/main/LICENSE) for full details.

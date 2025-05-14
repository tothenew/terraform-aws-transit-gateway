provider "aws" {
  region = "us-east-1"
}

module "tgw" {
  source = "../../tgw"

  name             = "example-tgw"
  amazon_side_asn  = 64512
}


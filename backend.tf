module "vpc" {
  source               = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-aws-vpc/v1.1.4.zip"
  service_name         = local.service_name
  env                  = var.env
  aws_region           = var.aws_region
  name                 = "satellite-service-vpc"
  cidr_block           = var.cidr_block
  availability_zones   = var.availability_zones
  public_subnets       = var.public_subnets
  private_subnets      = var.private_subnets
  database_subnets     = var.database_subnets
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  enable_nat_gateway   = var.enable_nat_gateway
  tags                 = module.labels_for_vpc.tags
}

module "api_gateway" {
  source                       = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-aws-api-gateway/v1.2.5.zip"
  name                         = "${local.service_name}-rest-api"
  env                          = var.env
  api_gateway_types            = var.api_gateway_types
  service_name                 = local.service_name
  enable_api_gw_logging        = var.enable_api_gw_logging
  api_gw_logging_level         = var.api_gw_logging_level
  enable_api_gw_access_logging = var.enable_api_gw_access_logging
  tags                         = module.labels_for_api_gateway.tags
}

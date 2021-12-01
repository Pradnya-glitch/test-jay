resource "aws_ssm_parameter" "satellite_service_rest_api_id" {
  name        = "/${var.env}/satelliteServiceRestApiId"
  description = "The Satellite Service Api Gateway Rest Api Id"
  type        = "String"
  overwrite   = "true"
  value       = module.api_gateway.id
  tags        = module.ssm_parameter_labels_for_satellite_service_rest_api_id.tags
}

resource "aws_ssm_parameter" "satellite_service_api_root_resource_id" {
  name        = "/${var.env}/satelliteServiceApiRootResourceId"
  description = "The Satellite Service Api Gateway Root Resource Id"
  type        = "String"
  value       = module.api_gateway.root_resource_id
  tags        = module.ssm_parameter_labels_for_satellite_service_api_root_resource_id.tags
}

resource "aws_ssm_parameter" "satellite_service_private_subnets" {
  name        = "/${var.env}/satelliteServicePrivateSubnets"
  description = "The List of Private Subnets in Satellite Service"
  type        = "StringList"
  value       = join(",", module.vpc.private_subnets_ids)
  tags        = module.ssm_parameter_labels_for_satellite_service_private_subnets.tags
}

resource "aws_ssm_parameter" "satellite_service_vpc_id" {
  name        = "/${var.env}/satelliteServiceVpcId"
  description = "The Id of Satellite Service VPC"
  type        = "String"
  value       = module.vpc.id
  tags        = module.ssm_parameter_labels_for_satellite_service_vpc_id.tags
}

resource "aws_ssm_parameter" "satellite_service_provisioned_concurrency" {
  name        = "/${var.env}/satelliteServiceProvisionedConcurrency"
  description = "The Satellite Service lambda's provisioned concurrency count"
  type        = "String"
  value       = var.provisioned_concurrency_count
  tags        = module.ssm_parameter_labels_for_satellite_service_provisioned_concurrency.tags
}

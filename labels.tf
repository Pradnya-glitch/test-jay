module "labels_for_vpc" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "vpc"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  additional_tags = var.tags
}

module "labels_for_api_gateway" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "api-gateway"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "rest-api"
  additional_tags = var.tags
}

module "labels_for_deploy_service" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "service"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "codebuild"
  additional_tags = var.tags
}

module "labels_for_deployment_pipeline" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "codepipeline"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "pipeline"
  additional_tags = var.tags
}

module "ssm_parameter_labels_for_satellite_service_rest_api_id" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "ssm-parameter"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "rest-api"
  additional_tags = var.tags
}

module "ssm_parameter_labels_for_satellite_service_api_root_resource_id" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "ssm-parameter"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "rest-api"
  additional_tags = var.tags
}

module "ssm_parameter_labels_for_satellite_service_private_subnets" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "ssm-parameter"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "private-subnets"
  additional_tags = var.tags
}

module "ssm_parameter_labels_for_satellite_service_vpc_id" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "ssm-parameter"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "vpc"
  additional_tags = var.tags
}

module "ssm_parameter_labels_for_satellite_service_provisioned_concurrency" {
  source          = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-labels/v1.0.0.zip"
  env             = var.env
  resource_type   = "ssm-parameter"
  service_name    = local.service_name
  product_team    = "product-team-iam"
  used_for        = "concurrency-count"
  additional_tags = var.tags
}

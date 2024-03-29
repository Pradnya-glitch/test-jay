module "deploy_service" {
  source                     = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-aws-codebuild-for-service/v1.2.6.zip"
  env                        = var.env
  build_artifacts_bucket_arn = var.build_artifacts_bucket_arn
  service_name               = local.service_name
  security_groups            = []
  subnets                    = module.vpc.private_subnets_ids
  vpc_id                     = module.vpc.id
  tags                       = module.labels_for_deploy_service.tags
}

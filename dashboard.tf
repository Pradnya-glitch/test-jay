module "dashboard" {
  source = "s3::https://s3.amazonaws.com/medly-dev-build-artifacts/terraform-modules/terraform-aws-service-monitoring/v1.2.6.zip//dashboard"

  service_name = local.service_name
  lambda_functions = [
    "satellite-app-${var.env}-satelliteApi",
  ]

  apigateway = "${local.service_name}-rest-api"

  depends_on = [
    module.api_gateway
  ]
}

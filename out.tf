output "vpc_id" {
  value = module.vpc.id
}

output "cidr_block" {
  value = var.cidr_block
}

output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "private_subnets_ids" {
  value = module.vpc.private_subnets_ids
}

output "api_gateway_id" {
  value = module.api_gateway.id
}

output "api_gateway_root_resource_id" {
  value = module.api_gateway.root_resource_id
}

output "api_gateway_base_url" {
  value = module.api_gateway.invoke_url
}

# --- azurerm_nat_gateway ---
output "nat_gateways_id" {
  description = "Map of id values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_id
}

output "nat_gateways_idle_timeout_in_minutes" {
  description = "Map of idle_timeout_in_minutes values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_idle_timeout_in_minutes
}

output "nat_gateways_location" {
  description = "Map of location values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_location
}

output "nat_gateways_name" {
  description = "Map of name values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_name
}

output "nat_gateways_resource_group_name" {
  description = "Map of resource_group_name values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_resource_group_name
}

output "nat_gateways_resource_guid" {
  description = "Map of resource_guid values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_resource_guid
}

output "nat_gateways_sku_name" {
  description = "Map of sku_name values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_sku_name
}

output "nat_gateways_tags" {
  description = "Map of tags values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_tags
}

output "nat_gateways_zones" {
  description = "Map of zones values across all nat_gateways, keyed the same as var.nat_gateways"
  value       = module.nat_gateways.nat_gateways_zones
}

# --- azurerm_nat_gateway_public_ip_association ---
output "nat_gateway_public_ip_associations_id" {
  description = "Map of id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations_id
}

output "nat_gateway_public_ip_associations_nat_gateway_id" {
  description = "Map of nat_gateway_id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations_nat_gateway_id
}

output "nat_gateway_public_ip_associations_public_ip_address_id" {
  description = "Map of public_ip_address_id values across all nat_gateway_public_ip_associations, keyed the same as var.nat_gateway_public_ip_associations"
  value       = module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations_public_ip_address_id
}

# --- azurerm_nat_gateway_public_ip_prefix_association ---
output "nat_gateway_public_ip_prefix_associations_id" {
  description = "Map of id values across all nat_gateway_public_ip_prefix_associations, keyed the same as var.nat_gateway_public_ip_prefix_associations"
  value       = module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations_id
}

output "nat_gateway_public_ip_prefix_associations_nat_gateway_id" {
  description = "Map of nat_gateway_id values across all nat_gateway_public_ip_prefix_associations, keyed the same as var.nat_gateway_public_ip_prefix_associations"
  value       = module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations_nat_gateway_id
}

output "nat_gateway_public_ip_prefix_associations_public_ip_prefix_id" {
  description = "Map of public_ip_prefix_id values across all nat_gateway_public_ip_prefix_associations, keyed the same as var.nat_gateway_public_ip_prefix_associations"
  value       = module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations_public_ip_prefix_id
}



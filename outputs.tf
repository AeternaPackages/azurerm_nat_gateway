# --- azurerm_nat_gateway ---
output "nat_gateways" {
  description = "All nat_gateway resources"
  value       = module.nat_gateways.nat_gateways
}
output "nat_gateways_idle_timeout_in_minutes" {
  description = "List of idle_timeout_in_minutes values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.idle_timeout_in_minutes]
}
output "nat_gateways_location" {
  description = "List of location values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.location]
}
output "nat_gateways_name" {
  description = "List of name values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.name]
}
output "nat_gateways_resource_group_name" {
  description = "List of resource_group_name values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.resource_group_name]
}
output "nat_gateways_resource_guid" {
  description = "List of resource_guid values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.resource_guid]
}
output "nat_gateways_sku_name" {
  description = "List of sku_name values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.sku_name]
}
output "nat_gateways_tags" {
  description = "List of tags values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.tags]
}
output "nat_gateways_zones" {
  description = "List of zones values across all nat_gateways"
  value       = [for k, v in module.nat_gateways.nat_gateways : v.zones]
}


# --- azurerm_nat_gateway_public_ip_association ---
output "nat_gateway_public_ip_associations" {
  description = "All nat_gateway_public_ip_association resources"
  value       = module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations
}
output "nat_gateway_public_ip_associations_nat_gateway_id" {
  description = "List of nat_gateway_id values across all nat_gateway_public_ip_associations"
  value       = [for k, v in module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations : v.nat_gateway_id]
}
output "nat_gateway_public_ip_associations_public_ip_address_id" {
  description = "List of public_ip_address_id values across all nat_gateway_public_ip_associations"
  value       = [for k, v in module.nat_gateway_public_ip_associations.nat_gateway_public_ip_associations : v.public_ip_address_id]
}


# --- azurerm_nat_gateway_public_ip_prefix_association ---
output "nat_gateway_public_ip_prefix_associations" {
  description = "All nat_gateway_public_ip_prefix_association resources"
  value       = module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations
}
output "nat_gateway_public_ip_prefix_associations_nat_gateway_id" {
  description = "List of nat_gateway_id values across all nat_gateway_public_ip_prefix_associations"
  value       = [for k, v in module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations : v.nat_gateway_id]
}
output "nat_gateway_public_ip_prefix_associations_public_ip_prefix_id" {
  description = "List of public_ip_prefix_id values across all nat_gateway_public_ip_prefix_associations"
  value       = [for k, v in module.nat_gateway_public_ip_prefix_associations.nat_gateway_public_ip_prefix_associations : v.public_ip_prefix_id]
}




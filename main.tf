locals {
  nat_gateways = { for k1, v1 in var.nat_gateways : k1 => { idle_timeout_in_minutes = v1.idle_timeout_in_minutes, location = v1.location, name = v1.name, resource_group_name = v1.resource_group_name, sku_name = v1.sku_name, tags = v1.tags, zones = v1.zones } }

  nat_gateway_public_ip_associations = merge([
    for k1, v1 in var.nat_gateways : {
      for k2, v2 in coalesce(v1.nat_gateway_public_ip_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        nat_gateway_id = module.nat_gateways.nat_gateways_id["${k1}"]
      })
    }
  ]...)

  nat_gateway_public_ip_prefix_associations = merge([
    for k1, v1 in var.nat_gateways : {
      for k2, v2 in coalesce(v1.nat_gateway_public_ip_prefix_associations, {}) :
      "${k1}/${k2}" => merge(v2, {
        nat_gateway_id = module.nat_gateways.nat_gateways_id["${k1}"]
      })
    }
  ]...)
}

module "nat_gateways" {
  source       = "git::https://github.com/AeternaModules/azurerm_nat_gateway.git?ref=v5.0.0"
  nat_gateways = local.nat_gateways
}

module "nat_gateway_public_ip_associations" {
  source                             = "git::https://github.com/AeternaModules/azurerm_nat_gateway_public_ip_association.git?ref=v5.0.0"
  nat_gateway_public_ip_associations = local.nat_gateway_public_ip_associations
  depends_on                         = [module.nat_gateways]
}

module "nat_gateway_public_ip_prefix_associations" {
  source                                    = "git::https://github.com/AeternaModules/azurerm_nat_gateway_public_ip_prefix_association.git?ref=v5.0.0"
  nat_gateway_public_ip_prefix_associations = local.nat_gateway_public_ip_prefix_associations
  depends_on                                = [module.nat_gateways]
}


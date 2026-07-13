variable "nat_gateways" {
  description = <<EOT
Map of nat_gateways, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - idle_timeout_in_minutes
    - sku_name
    - tags
    - zones
Nested nat_gateway_public_ip_associations (azurerm_nat_gateway_public_ip_association):
    Required:
        - public_ip_address_id
Nested nat_gateway_public_ip_prefix_associations (azurerm_nat_gateway_public_ip_prefix_association):
    Required:
        - public_ip_prefix_id
EOT

  type = map(object({
    location                = string
    name                    = string
    resource_group_name     = string
    idle_timeout_in_minutes = optional(number)
    sku_name                = optional(string)
    tags                    = optional(map(string))
    zones                   = optional(set(string))
    nat_gateway_public_ip_associations = optional(map(object({
      public_ip_address_id = string
    })))
    nat_gateway_public_ip_prefix_associations = optional(map(object({
      public_ip_prefix_id = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.nat_gateways) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.nat_gateways : [for kk in keys(coalesce(v0.nat_gateway_public_ip_associations, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.nat_gateways : [for kk in keys(coalesce(v0.nat_gateway_public_ip_prefix_associations, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}

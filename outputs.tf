output "named_location_lookup_id" {
  description = "Map of id values across all named_location_lookup, keyed the same as var.named_location_lookup"
  value       = { for k, v in data.azuread_named_location.named_location_lookup : k => v.id }
}
output "named_location_lookup_country" {
  description = "Map of country values across all named_location_lookup, keyed the same as var.named_location_lookup"
  value       = { for k, v in data.azuread_named_location.named_location_lookup : k => v.country }
}
output "named_location_lookup_display_name" {
  description = "Map of display_name values across all named_location_lookup, keyed the same as var.named_location_lookup"
  value       = { for k, v in data.azuread_named_location.named_location_lookup : k => v.display_name }
}
output "named_location_lookup_ip" {
  description = "Map of ip values across all named_location_lookup, keyed the same as var.named_location_lookup"
  value       = { for k, v in data.azuread_named_location.named_location_lookup : k => v.ip }
}
output "named_location_lookup_object_id" {
  description = "Map of object_id values across all named_location_lookup, keyed the same as var.named_location_lookup"
  value       = { for k, v in data.azuread_named_location.named_location_lookup : k => v.object_id }
}


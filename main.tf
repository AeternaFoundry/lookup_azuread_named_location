data "azuread_named_location" "named_location_lookup" {
  for_each = var.named_location_lookup

  display_name = each.value.display_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}


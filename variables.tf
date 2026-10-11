variable "named_location_lookup" {
  description = <<EOT
Map of named_location_lookup, attributes below
Required:
    - display_name
EOT

  type = map(object({
    display_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.named_location_lookup : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}


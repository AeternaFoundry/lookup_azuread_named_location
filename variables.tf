variable "named_location_lookup" {
  description = <<EOT
Map of named_location_lookup, attributes below
Required:
    - display_name
Optional:
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    display_name = string
    timeouts = optional(object({
      read = optional(string)
    }))
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


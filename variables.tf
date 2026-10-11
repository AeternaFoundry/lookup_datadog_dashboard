variable "dashboard_lookup" {
  description = <<EOT
Map of dashboard_lookup, attributes below
Required:
    - name
EOT

  type = map(object({
    name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.dashboard_lookup : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
}


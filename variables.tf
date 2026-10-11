variable "fleet_apps_management_fleet_properties" {
  description = <<EOT
Map of fleet_apps_management_fleet_properties, attributes below
Required:
    - compartment_id
    - fleet_id
    - property_id
    - value
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    fleet_id       = string
    property_id    = string
    value          = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}


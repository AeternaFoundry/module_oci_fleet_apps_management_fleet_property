resource "oci_fleet_apps_management_fleet_property" "fleet_apps_management_fleet_properties" {
  for_each = var.fleet_apps_management_fleet_properties

  compartment_id = each.value.compartment_id
  fleet_id       = each.value.fleet_id
  property_id    = each.value.property_id
  value          = each.value.value

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


data "datadog_dashboard" "dashboard_lookup" {
  for_each = var.dashboard_lookup

  name = each.value.name
}


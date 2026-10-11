output "dashboard_lookup_id" {
  description = "Map of id values across all dashboard_lookup, keyed the same as var.dashboard_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_dashboard.dashboard_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dashboard_lookup_name" {
  description = "Map of name values across all dashboard_lookup, keyed the same as var.dashboard_lookup except keys with no name are omitted"
  value       = { for k, v in data.datadog_dashboard.dashboard_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dashboard_lookup_title" {
  description = "Map of title values across all dashboard_lookup, keyed the same as var.dashboard_lookup except keys with no title are omitted"
  value       = { for k, v in data.datadog_dashboard.dashboard_lookup : k => v.title if v.title != null && length(v.title) > 0 }
}
output "dashboard_lookup_url" {
  description = "Map of url values across all dashboard_lookup, keyed the same as var.dashboard_lookup except keys with no url are omitted"
  value       = { for k, v in data.datadog_dashboard.dashboard_lookup : k => v.url if v.url != null && length(v.url) > 0 }
}


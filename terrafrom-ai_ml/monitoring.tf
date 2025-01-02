resource "google_monitoring_monitored_project" "cs-monitored-projects" {
  for_each = toset([
    module.cs-svc-prod1-svc-j8yh.project_id,
    module.cs-svc-nonprod1-svc-j8yh.project_id,
  ])
  metrics_scope = "locations/global/metricsScopes/${module.cs-project-logging-monitoring.project_id}"
  name          = each.value
}

resource "google_project_service" "monitoring_googleapis_com" {
  project = "67931813644"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 67931813644/monitoring.googleapis.com

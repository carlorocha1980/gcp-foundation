resource "google_project_service" "monitoring_googleapis_com" {
  project = "692159066307"
  service = "monitoring.googleapis.com"
}
# terraform import google_project_service.monitoring_googleapis_com 692159066307/monitoring.googleapis.com

resource "google_project_service" "logging_googleapis_com" {
  project = "67931813644"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 67931813644/logging.googleapis.com

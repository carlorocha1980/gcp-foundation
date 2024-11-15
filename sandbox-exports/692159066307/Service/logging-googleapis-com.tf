resource "google_project_service" "logging_googleapis_com" {
  project = "692159066307"
  service = "logging.googleapis.com"
}
# terraform import google_project_service.logging_googleapis_com 692159066307/logging.googleapis.com

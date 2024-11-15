resource "google_project_service" "config_googleapis_com" {
  project = "692159066307"
  service = "config.googleapis.com"
}
# terraform import google_project_service.config_googleapis_com 692159066307/config.googleapis.com

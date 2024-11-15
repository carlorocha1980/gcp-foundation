resource "google_project_service" "cloudapis_googleapis_com" {
  project = "67931813644"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 67931813644/cloudapis.googleapis.com

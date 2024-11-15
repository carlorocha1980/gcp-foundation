resource "google_project_service" "cloudscheduler_googleapis_com" {
  project = "67931813644"
  service = "cloudscheduler.googleapis.com"
}
# terraform import google_project_service.cloudscheduler_googleapis_com 67931813644/cloudscheduler.googleapis.com

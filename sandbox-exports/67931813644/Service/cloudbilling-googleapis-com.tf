resource "google_project_service" "cloudbilling_googleapis_com" {
  project = "67931813644"
  service = "cloudbilling.googleapis.com"
}
# terraform import google_project_service.cloudbilling_googleapis_com 67931813644/cloudbilling.googleapis.com

resource "google_project_service" "cloudbilling_googleapis_com" {
  project = "692159066307"
  service = "cloudbilling.googleapis.com"
}
# terraform import google_project_service.cloudbilling_googleapis_com 692159066307/cloudbilling.googleapis.com

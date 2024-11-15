resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "67931813644"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 67931813644/cloudbuild.googleapis.com

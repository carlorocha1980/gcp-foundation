resource "google_project_service" "cloudbuild_googleapis_com" {
  project = "692159066307"
  service = "cloudbuild.googleapis.com"
}
# terraform import google_project_service.cloudbuild_googleapis_com 692159066307/cloudbuild.googleapis.com

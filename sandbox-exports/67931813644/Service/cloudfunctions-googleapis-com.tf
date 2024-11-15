resource "google_project_service" "cloudfunctions_googleapis_com" {
  project = "67931813644"
  service = "cloudfunctions.googleapis.com"
}
# terraform import google_project_service.cloudfunctions_googleapis_com 67931813644/cloudfunctions.googleapis.com

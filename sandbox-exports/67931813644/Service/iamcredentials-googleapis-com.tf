resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "67931813644"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 67931813644/iamcredentials.googleapis.com

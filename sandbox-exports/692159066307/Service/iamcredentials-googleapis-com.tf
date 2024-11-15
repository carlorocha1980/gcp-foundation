resource "google_project_service" "iamcredentials_googleapis_com" {
  project = "692159066307"
  service = "iamcredentials.googleapis.com"
}
# terraform import google_project_service.iamcredentials_googleapis_com 692159066307/iamcredentials.googleapis.com

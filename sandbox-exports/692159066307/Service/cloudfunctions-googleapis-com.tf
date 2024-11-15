resource "google_project_service" "cloudfunctions_googleapis_com" {
  project = "692159066307"
  service = "cloudfunctions.googleapis.com"
}
# terraform import google_project_service.cloudfunctions_googleapis_com 692159066307/cloudfunctions.googleapis.com

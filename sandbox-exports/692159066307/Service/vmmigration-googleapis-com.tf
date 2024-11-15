resource "google_project_service" "vmmigration_googleapis_com" {
  project = "692159066307"
  service = "vmmigration.googleapis.com"
}
# terraform import google_project_service.vmmigration_googleapis_com 692159066307/vmmigration.googleapis.com

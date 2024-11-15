resource "google_project_service" "cloudapis_googleapis_com" {
  project = "692159066307"
  service = "cloudapis.googleapis.com"
}
# terraform import google_project_service.cloudapis_googleapis_com 692159066307/cloudapis.googleapis.com

resource "google_project_service" "serviceusage_googleapis_com" {
  project = "692159066307"
  service = "serviceusage.googleapis.com"
}
# terraform import google_project_service.serviceusage_googleapis_com 692159066307/serviceusage.googleapis.com

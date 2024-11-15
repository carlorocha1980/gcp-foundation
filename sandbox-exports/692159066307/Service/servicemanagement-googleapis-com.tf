resource "google_project_service" "servicemanagement_googleapis_com" {
  project = "692159066307"
  service = "servicemanagement.googleapis.com"
}
# terraform import google_project_service.servicemanagement_googleapis_com 692159066307/servicemanagement.googleapis.com

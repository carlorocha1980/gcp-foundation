resource "google_project_service" "networkservices_googleapis_com" {
  project = "692159066307"
  service = "networkservices.googleapis.com"
}
# terraform import google_project_service.networkservices_googleapis_com 692159066307/networkservices.googleapis.com

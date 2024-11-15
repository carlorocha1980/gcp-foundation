resource "google_project_service" "gkeconnect_googleapis_com" {
  project = "692159066307"
  service = "gkeconnect.googleapis.com"
}
# terraform import google_project_service.gkeconnect_googleapis_com 692159066307/gkeconnect.googleapis.com

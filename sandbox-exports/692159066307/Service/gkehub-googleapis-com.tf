resource "google_project_service" "gkehub_googleapis_com" {
  project = "692159066307"
  service = "gkehub.googleapis.com"
}
# terraform import google_project_service.gkehub_googleapis_com 692159066307/gkehub.googleapis.com

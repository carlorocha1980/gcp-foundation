resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "67931813644"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 67931813644/bigquerystorage.googleapis.com

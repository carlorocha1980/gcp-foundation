resource "google_project_service" "bigquerystorage_googleapis_com" {
  project = "692159066307"
  service = "bigquerystorage.googleapis.com"
}
# terraform import google_project_service.bigquerystorage_googleapis_com 692159066307/bigquerystorage.googleapis.com

resource "google_project_service" "storage_googleapis_com" {
  project = "692159066307"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 692159066307/storage.googleapis.com

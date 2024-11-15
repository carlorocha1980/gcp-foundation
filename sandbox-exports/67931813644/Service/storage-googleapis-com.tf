resource "google_project_service" "storage_googleapis_com" {
  project = "67931813644"
  service = "storage.googleapis.com"
}
# terraform import google_project_service.storage_googleapis_com 67931813644/storage.googleapis.com

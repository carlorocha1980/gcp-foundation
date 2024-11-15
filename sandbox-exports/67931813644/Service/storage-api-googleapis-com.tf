resource "google_project_service" "storage_api_googleapis_com" {
  project = "67931813644"
  service = "storage-api.googleapis.com"
}
# terraform import google_project_service.storage_api_googleapis_com 67931813644/storage-api.googleapis.com

resource "google_project_service" "file_googleapis_com" {
  project = "67931813644"
  service = "file.googleapis.com"
}
# terraform import google_project_service.file_googleapis_com 67931813644/file.googleapis.com

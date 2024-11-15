resource "google_project_service" "file_googleapis_com" {
  project = "692159066307"
  service = "file.googleapis.com"
}
# terraform import google_project_service.file_googleapis_com 692159066307/file.googleapis.com

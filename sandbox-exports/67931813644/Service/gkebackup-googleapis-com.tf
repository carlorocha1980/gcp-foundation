resource "google_project_service" "gkebackup_googleapis_com" {
  project = "67931813644"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 67931813644/gkebackup.googleapis.com

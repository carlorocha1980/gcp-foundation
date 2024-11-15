resource "google_project_service" "gkebackup_googleapis_com" {
  project = "692159066307"
  service = "gkebackup.googleapis.com"
}
# terraform import google_project_service.gkebackup_googleapis_com 692159066307/gkebackup.googleapis.com

resource "google_project_service" "sqladmin_googleapis_com" {
  project = "67931813644"
  service = "sqladmin.googleapis.com"
}
# terraform import google_project_service.sqladmin_googleapis_com 67931813644/sqladmin.googleapis.com

resource "google_project_service" "sqladmin_googleapis_com" {
  project = "692159066307"
  service = "sqladmin.googleapis.com"
}
# terraform import google_project_service.sqladmin_googleapis_com 692159066307/sqladmin.googleapis.com

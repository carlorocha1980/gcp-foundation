resource "google_project_service" "datamigration_googleapis_com" {
  project = "692159066307"
  service = "datamigration.googleapis.com"
}
# terraform import google_project_service.datamigration_googleapis_com 692159066307/datamigration.googleapis.com

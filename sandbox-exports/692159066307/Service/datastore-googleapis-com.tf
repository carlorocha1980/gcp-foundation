resource "google_project_service" "datastore_googleapis_com" {
  project = "692159066307"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 692159066307/datastore.googleapis.com

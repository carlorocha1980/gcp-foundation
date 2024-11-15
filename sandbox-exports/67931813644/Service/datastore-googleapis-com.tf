resource "google_project_service" "datastore_googleapis_com" {
  project = "67931813644"
  service = "datastore.googleapis.com"
}
# terraform import google_project_service.datastore_googleapis_com 67931813644/datastore.googleapis.com

resource "google_project_service" "firestore_googleapis_com" {
  project = "67931813644"
  service = "firestore.googleapis.com"
}
# terraform import google_project_service.firestore_googleapis_com 67931813644/firestore.googleapis.com

resource "google_project_service" "firestore_googleapis_com" {
  project = "692159066307"
  service = "firestore.googleapis.com"
}
# terraform import google_project_service.firestore_googleapis_com 692159066307/firestore.googleapis.com

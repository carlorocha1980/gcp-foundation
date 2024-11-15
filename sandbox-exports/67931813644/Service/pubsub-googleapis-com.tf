resource "google_project_service" "pubsub_googleapis_com" {
  project = "67931813644"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 67931813644/pubsub.googleapis.com

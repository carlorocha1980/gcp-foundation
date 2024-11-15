resource "google_project_service" "pubsub_googleapis_com" {
  project = "692159066307"
  service = "pubsub.googleapis.com"
}
# terraform import google_project_service.pubsub_googleapis_com 692159066307/pubsub.googleapis.com

resource "google_project_service" "container_googleapis_com" {
  project = "67931813644"
  service = "container.googleapis.com"
}
# terraform import google_project_service.container_googleapis_com 67931813644/container.googleapis.com

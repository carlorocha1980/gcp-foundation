resource "google_project_service" "containerregistry_googleapis_com" {
  project = "67931813644"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 67931813644/containerregistry.googleapis.com

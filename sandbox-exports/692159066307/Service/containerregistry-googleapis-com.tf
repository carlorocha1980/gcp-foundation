resource "google_project_service" "containerregistry_googleapis_com" {
  project = "692159066307"
  service = "containerregistry.googleapis.com"
}
# terraform import google_project_service.containerregistry_googleapis_com 692159066307/containerregistry.googleapis.com

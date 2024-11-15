resource "google_project_service" "compute_googleapis_com" {
  project = "67931813644"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 67931813644/compute.googleapis.com

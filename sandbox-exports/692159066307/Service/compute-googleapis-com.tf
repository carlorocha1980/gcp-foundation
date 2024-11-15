resource "google_project_service" "compute_googleapis_com" {
  project = "692159066307"
  service = "compute.googleapis.com"
}
# terraform import google_project_service.compute_googleapis_com 692159066307/compute.googleapis.com

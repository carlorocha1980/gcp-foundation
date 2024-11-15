resource "google_project_service" "run_googleapis_com" {
  project = "692159066307"
  service = "run.googleapis.com"
}
# terraform import google_project_service.run_googleapis_com 692159066307/run.googleapis.com

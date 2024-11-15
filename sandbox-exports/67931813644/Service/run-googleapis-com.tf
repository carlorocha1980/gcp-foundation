resource "google_project_service" "run_googleapis_com" {
  project = "67931813644"
  service = "run.googleapis.com"
}
# terraform import google_project_service.run_googleapis_com 67931813644/run.googleapis.com

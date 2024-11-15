resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "67931813644"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 67931813644/cloudtrace.googleapis.com

resource "google_project_service" "cloudtrace_googleapis_com" {
  project = "692159066307"
  service = "cloudtrace.googleapis.com"
}
# terraform import google_project_service.cloudtrace_googleapis_com 692159066307/cloudtrace.googleapis.com

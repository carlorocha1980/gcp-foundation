resource "google_project_service" "runtimeconfig_googleapis_com" {
  project = "692159066307"
  service = "runtimeconfig.googleapis.com"
}
# terraform import google_project_service.runtimeconfig_googleapis_com 692159066307/runtimeconfig.googleapis.com

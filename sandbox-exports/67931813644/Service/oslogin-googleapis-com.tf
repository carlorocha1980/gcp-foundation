resource "google_project_service" "oslogin_googleapis_com" {
  project = "67931813644"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 67931813644/oslogin.googleapis.com

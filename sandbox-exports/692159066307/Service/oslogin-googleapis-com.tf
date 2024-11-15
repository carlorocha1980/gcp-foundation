resource "google_project_service" "oslogin_googleapis_com" {
  project = "692159066307"
  service = "oslogin.googleapis.com"
}
# terraform import google_project_service.oslogin_googleapis_com 692159066307/oslogin.googleapis.com

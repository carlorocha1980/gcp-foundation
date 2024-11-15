resource "google_project_service" "orgpolicy_googleapis_com" {
  project = "692159066307"
  service = "orgpolicy.googleapis.com"
}
# terraform import google_project_service.orgpolicy_googleapis_com 692159066307/orgpolicy.googleapis.com

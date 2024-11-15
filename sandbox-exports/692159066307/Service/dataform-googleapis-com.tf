resource "google_project_service" "dataform_googleapis_com" {
  project = "692159066307"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 692159066307/dataform.googleapis.com

resource "google_project_service" "dataform_googleapis_com" {
  project = "67931813644"
  service = "dataform.googleapis.com"
}
# terraform import google_project_service.dataform_googleapis_com 67931813644/dataform.googleapis.com

resource "google_project_service" "dataproc_googleapis_com" {
  project = "692159066307"
  service = "dataproc.googleapis.com"
}
# terraform import google_project_service.dataproc_googleapis_com 692159066307/dataproc.googleapis.com

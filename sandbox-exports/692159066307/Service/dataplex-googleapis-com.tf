resource "google_project_service" "dataplex_googleapis_com" {
  project = "692159066307"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 692159066307/dataplex.googleapis.com

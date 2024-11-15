resource "google_project_service" "dataplex_googleapis_com" {
  project = "67931813644"
  service = "dataplex.googleapis.com"
}
# terraform import google_project_service.dataplex_googleapis_com 67931813644/dataplex.googleapis.com

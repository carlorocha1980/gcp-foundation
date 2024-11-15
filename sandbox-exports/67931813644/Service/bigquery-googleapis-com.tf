resource "google_project_service" "bigquery_googleapis_com" {
  project = "67931813644"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 67931813644/bigquery.googleapis.com

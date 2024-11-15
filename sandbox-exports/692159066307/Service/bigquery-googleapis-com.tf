resource "google_project_service" "bigquery_googleapis_com" {
  project = "692159066307"
  service = "bigquery.googleapis.com"
}
# terraform import google_project_service.bigquery_googleapis_com 692159066307/bigquery.googleapis.com

resource "google_project_service" "iam_googleapis_com" {
  project = "67931813644"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 67931813644/iam.googleapis.com

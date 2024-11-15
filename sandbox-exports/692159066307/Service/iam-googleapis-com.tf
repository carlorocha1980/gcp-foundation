resource "google_project_service" "iam_googleapis_com" {
  project = "692159066307"
  service = "iam.googleapis.com"
}
# terraform import google_project_service.iam_googleapis_com 692159066307/iam.googleapis.com

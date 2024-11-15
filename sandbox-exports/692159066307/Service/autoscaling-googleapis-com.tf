resource "google_project_service" "autoscaling_googleapis_com" {
  project = "692159066307"
  service = "autoscaling.googleapis.com"
}
# terraform import google_project_service.autoscaling_googleapis_com 692159066307/autoscaling.googleapis.com

resource "google_project_service" "recommender_googleapis_com" {
  project = "692159066307"
  service = "recommender.googleapis.com"
}
# terraform import google_project_service.recommender_googleapis_com 692159066307/recommender.googleapis.com

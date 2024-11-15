resource "google_project_service" "composer_googleapis_com" {
  project = "692159066307"
  service = "composer.googleapis.com"
}
# terraform import google_project_service.composer_googleapis_com 692159066307/composer.googleapis.com

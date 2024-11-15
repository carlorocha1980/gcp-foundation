resource "google_project_service" "composer_googleapis_com" {
  project = "67931813644"
  service = "composer.googleapis.com"
}
# terraform import google_project_service.composer_googleapis_com 67931813644/composer.googleapis.com

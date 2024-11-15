resource "google_project_service" "edgecache_googleapis_com" {
  project = "67931813644"
  service = "edgecache.googleapis.com"
}
# terraform import google_project_service.edgecache_googleapis_com 67931813644/edgecache.googleapis.com

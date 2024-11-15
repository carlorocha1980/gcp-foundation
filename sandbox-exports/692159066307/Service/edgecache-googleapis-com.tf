resource "google_project_service" "edgecache_googleapis_com" {
  project = "692159066307"
  service = "edgecache.googleapis.com"
}
# terraform import google_project_service.edgecache_googleapis_com 692159066307/edgecache.googleapis.com

resource "google_project_service" "dns_googleapis_com" {
  project = "692159066307"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 692159066307/dns.googleapis.com

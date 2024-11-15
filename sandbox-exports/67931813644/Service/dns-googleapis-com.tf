resource "google_project_service" "dns_googleapis_com" {
  project = "67931813644"
  service = "dns.googleapis.com"
}
# terraform import google_project_service.dns_googleapis_com 67931813644/dns.googleapis.com

resource "google_dns_managed_zone" "internal_dt_sandbox_zone" {
  cloud_logging_config {
    enable_logging = false
  }

  dns_name      = "internal.carlokos.com.br."
  force_destroy = false
  name          = "internal-dt-sandbox-zone"
  project       = "dt-sandbox-service-proj"
  visibility    = "private"
}
# terraform import google_dns_managed_zone.internal_dt_sandbox_zone projects/dt-sandbox-service-proj/managedZones/internal-dt-sandbox-zone

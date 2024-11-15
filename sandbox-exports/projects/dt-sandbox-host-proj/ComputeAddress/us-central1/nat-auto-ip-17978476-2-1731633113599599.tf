resource "google_compute_address" "nat_auto_ip_17978476_2_1731633113599599" {
  address      = "35.194.48.74"
  address_type = "EXTERNAL"
  name         = "nat-auto-ip-17978476-2-1731633113599599"
  network_tier = "PREMIUM"
  project      = "dt-sandbox-host-proj"
  purpose      = "NAT_AUTO"
  region       = "us-central1"
}
# terraform import google_compute_address.nat_auto_ip_17978476_2_1731633113599599 projects/dt-sandbox-host-proj/regions/us-central1/addresses/nat-auto-ip-17978476-2-1731633113599599

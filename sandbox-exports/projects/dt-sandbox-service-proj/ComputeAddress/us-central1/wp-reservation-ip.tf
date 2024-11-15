resource "google_compute_address" "wp_reservation_ip" {
  address      = "35.225.173.80"
  address_type = "EXTERNAL"
  name         = "wp-reservation-ip"
  network_tier = "PREMIUM"
  project      = "dt-sandbox-service-proj"
  region       = "us-central1"
}
# terraform import google_compute_address.wp_reservation_ip projects/dt-sandbox-service-proj/regions/us-central1/addresses/wp-reservation-ip

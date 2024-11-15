resource "google_compute_router" "sandbox_nat_router" {
  name    = "sandbox-nat-router"
  network = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project = "dt-sandbox-host-proj"
  region  = "us-central1"
}
# terraform import google_compute_router.sandbox_nat_router projects/dt-sandbox-host-proj/regions/us-central1/routers/sandbox-nat-router

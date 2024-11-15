resource "google_compute_subnetwork" "gke_avantia_private_cluster_dev_10f64187_pe_subnet" {
  description                = "Control Plane Endpoint Subnetwork"
  ip_cidr_range              = "10.242.83.0/28"
  name                       = "gke-avantia-private-cluster-dev-10f64187-pe-subnet"
  network                    = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "dt-sandbox-host-proj"
  purpose                    = "PRIVATE"
  region                     = "us-central1"
  stack_type                 = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.gke_avantia_private_cluster_dev_10f64187_pe_subnet projects/dt-sandbox-host-proj/regions/us-central1/subnetworks/gke-avantia-private-cluster-dev-10f64187-pe-subnet

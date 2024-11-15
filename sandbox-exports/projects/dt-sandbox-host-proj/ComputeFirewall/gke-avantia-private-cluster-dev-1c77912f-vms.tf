resource "google_compute_firewall" "gke_avantia_private_cluster_dev_1c77912f_vms" {
  allow {
    ports    = ["1-65535"]
    protocol = "tcp"
  }

  allow {
    ports    = ["1-65535"]
    protocol = "udp"
  }

  allow {
    protocol = "icmp"
  }

  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-dev-1c77912f-vms"
  network       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  priority      = 1000
  project       = "dt-sandbox-host-proj"
  source_ranges = ["10.242.0.0/22"]
  target_tags   = ["gke-avantia-private-cluster-dev-1c77912f-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_dev_1c77912f_vms projects/dt-sandbox-host-proj/global/firewalls/gke-avantia-private-cluster-dev-1c77912f-vms

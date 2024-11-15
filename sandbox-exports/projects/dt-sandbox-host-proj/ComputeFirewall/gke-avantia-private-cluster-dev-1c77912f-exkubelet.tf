resource "google_compute_firewall" "gke_avantia_private_cluster_dev_1c77912f_exkubelet" {
  deny {
    ports    = ["10255"]
    protocol = "tcp"
  }

  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-dev-1c77912f-exkubelet"
  network       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  priority      = 1000
  project       = "dt-sandbox-host-proj"
  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["gke-avantia-private-cluster-dev-1c77912f-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_dev_1c77912f_exkubelet projects/dt-sandbox-host-proj/global/firewalls/gke-avantia-private-cluster-dev-1c77912f-exkubelet

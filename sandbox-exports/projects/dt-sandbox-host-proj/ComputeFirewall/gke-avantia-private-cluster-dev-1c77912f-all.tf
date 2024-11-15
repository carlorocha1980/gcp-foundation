resource "google_compute_firewall" "gke_avantia_private_cluster_dev_1c77912f_all" {
  allow {
    protocol = "ah"
  }

  allow {
    protocol = "esp"
  }

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "sctp"
  }

  allow {
    protocol = "tcp"
  }

  allow {
    protocol = "udp"
  }

  direction     = "INGRESS"
  name          = "gke-avantia-private-cluster-dev-1c77912f-all"
  network       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  priority      = 1000
  project       = "dt-sandbox-host-proj"
  source_ranges = ["10.242.32.0/19", "10.242.8.0/21"]
  target_tags   = ["gke-avantia-private-cluster-dev-1c77912f-node"]
}
# terraform import google_compute_firewall.gke_avantia_private_cluster_dev_1c77912f_all projects/dt-sandbox-host-proj/global/firewalls/gke-avantia-private-cluster-dev-1c77912f-all

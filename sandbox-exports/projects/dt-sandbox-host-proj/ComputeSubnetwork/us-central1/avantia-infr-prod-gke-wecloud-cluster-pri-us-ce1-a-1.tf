resource "google_compute_subnetwork" "avantia_infr_prod_gke_wecloud_cluster_pri_us_ce1_a_1" {
  ip_cidr_range              = "10.242.0.0/22"
  name                       = "avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1"
  network                    = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  private_ipv6_google_access = "DISABLE_GOOGLE_ACCESS"
  project                    = "dt-sandbox-host-proj"
  purpose                    = "PRIVATE"
  region                     = "us-central1"

  secondary_ip_range {
    ip_cidr_range = "10.242.4.0/22"
    range_name    = "pods-range"
  }

  secondary_ip_range {
    ip_cidr_range = "10.242.8.0/21"
    range_name    = "services-range"
  }

  secondary_ip_range {
    ip_cidr_range = "10.242.32.0/19"
    range_name    = "wecloud-box-pods-range"
  }

  secondary_ip_range {
    ip_cidr_range = "10.242.16.0/21"
    range_name    = "weava-pods-range"
  }

  secondary_ip_range {
    ip_cidr_range = "10.242.28.0/22"
    range_name    = "wecloud-classifiers-pods-range"
  }

  secondary_ip_range {
    ip_cidr_range = "10.242.24.0/22"
    range_name    = "wecloud-app-pods-range"
  }

  stack_type = "IPV4_ONLY"
}
# terraform import google_compute_subnetwork.avantia_infr_prod_gke_wecloud_cluster_pri_us_ce1_a_1 projects/dt-sandbox-host-proj/regions/us-central1/subnetworks/avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1

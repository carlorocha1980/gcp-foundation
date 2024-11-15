resource "google_compute_instance_group" "gke_avantia_private_clus_default_pool_32a58553_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-avantia-private-clus-default-pool-32a58553-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/dt-sandbox-service-proj/zones/us-central1-f/instances/gke-avantia-private-clus-default-pool-32a58553-vx67"]
  name        = "gke-avantia-private-clus-default-pool-32a58553-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project     = "dt-sandbox-service-proj"
  zone        = "us-central1-f"
}
# terraform import google_compute_instance_group.gke_avantia_private_clus_default_pool_32a58553_grp projects/dt-sandbox-service-proj/zones/us-central1-f/instanceGroups/gke-avantia-private-clus-default-pool-32a58553-grp

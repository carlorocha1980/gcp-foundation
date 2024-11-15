resource "google_compute_instance_group" "gke_avantia_private_clus_default_pool_eaa16460_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-avantia-private-clus-default-pool-eaa16460-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/dt-sandbox-service-proj/zones/us-central1-a/instances/gke-avantia-private-clus-default-pool-eaa16460-g8m8"]
  name        = "gke-avantia-private-clus-default-pool-eaa16460-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project     = "dt-sandbox-service-proj"
  zone        = "us-central1-a"
}
# terraform import google_compute_instance_group.gke_avantia_private_clus_default_pool_eaa16460_grp projects/dt-sandbox-service-proj/zones/us-central1-a/instanceGroups/gke-avantia-private-clus-default-pool-eaa16460-grp

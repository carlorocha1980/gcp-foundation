resource "google_compute_instance_group" "gke_avantia_private_cluster_de_pool_3_476d1e57_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-avantia-private-cluster-de-pool-3-476d1e57-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  instances   = ["https://www.googleapis.com/compute/beta/projects/dt-sandbox-service-proj/zones/us-central1-c/instances/gke-avantia-private-cluster-de-pool-3-476d1e57-0wx0"]
  name        = "gke-avantia-private-cluster-de-pool-3-476d1e57-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project     = "dt-sandbox-service-proj"
  zone        = "us-central1-c"
}
# terraform import google_compute_instance_group.gke_avantia_private_cluster_de_pool_3_476d1e57_grp projects/dt-sandbox-service-proj/zones/us-central1-c/instanceGroups/gke-avantia-private-cluster-de-pool-3-476d1e57-grp

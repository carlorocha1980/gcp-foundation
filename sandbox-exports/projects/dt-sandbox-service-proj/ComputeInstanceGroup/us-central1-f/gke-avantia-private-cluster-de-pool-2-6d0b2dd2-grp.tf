resource "google_compute_instance_group" "gke_avantia_private_cluster_de_pool_2_6d0b2dd2_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-avantia-private-cluster-de-pool-2-6d0b2dd2-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  name        = "gke-avantia-private-cluster-de-pool-2-6d0b2dd2-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project     = "dt-sandbox-service-proj"
  zone        = "us-central1-f"
}
# terraform import google_compute_instance_group.gke_avantia_private_cluster_de_pool_2_6d0b2dd2_grp projects/dt-sandbox-service-proj/zones/us-central1-f/instanceGroups/gke-avantia-private-cluster-de-pool-2-6d0b2dd2-grp

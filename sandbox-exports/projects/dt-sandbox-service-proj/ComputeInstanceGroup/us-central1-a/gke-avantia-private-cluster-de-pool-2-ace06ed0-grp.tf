resource "google_compute_instance_group" "gke_avantia_private_cluster_de_pool_2_ace06ed0_grp" {
  description = "This instance group is controlled by Instance Group Manager 'gke-avantia-private-cluster-de-pool-2-ace06ed0-grp'. To modify instances in this group, use the Instance Group Manager API: https://cloud.google.com/compute/docs/reference/latest/instanceGroupManagers"
  name        = "gke-avantia-private-cluster-de-pool-2-ace06ed0-grp"
  network     = "https://www.googleapis.com/compute/beta/projects/dt-sandbox-host-proj/global/networks/infra-dev"
  project     = "dt-sandbox-service-proj"
  zone        = "us-central1-a"
}
# terraform import google_compute_instance_group.gke_avantia_private_cluster_de_pool_2_ace06ed0_grp projects/dt-sandbox-service-proj/zones/us-central1-a/instanceGroups/gke-avantia-private-cluster-de-pool-2-ace06ed0-grp

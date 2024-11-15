resource "google_service_account" "tf_gke_gke_cluster_k5xe" {
  account_id   = "tf-gke-gke-cluster-k5xe"
  display_name = "Terraform-managed service account for cluster gke-cluster"
  project      = "dt-sandbox-service-proj"
}
# terraform import google_service_account.tf_gke_gke_cluster_k5xe projects/dt-sandbox-service-proj/serviceAccounts/tf-gke-gke-cluster-k5xe@dt-sandbox-service-proj.iam.gserviceaccount.com

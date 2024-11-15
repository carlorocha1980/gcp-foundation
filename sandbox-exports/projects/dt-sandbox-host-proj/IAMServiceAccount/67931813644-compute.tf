resource "google_service_account" "67931813644_compute" {
  account_id   = "67931813644-compute"
  display_name = "Compute Engine default service account"
  project      = "dt-sandbox-host-proj"
}
# terraform import google_service_account.67931813644_compute projects/dt-sandbox-host-proj/serviceAccounts/67931813644-compute@dt-sandbox-host-proj.iam.gserviceaccount.com

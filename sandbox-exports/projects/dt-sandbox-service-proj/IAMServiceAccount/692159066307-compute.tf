resource "google_service_account" "692159066307_compute" {
  account_id   = "692159066307-compute"
  display_name = "Compute Engine default service account"
  project      = "dt-sandbox-service-proj"
}
# terraform import google_service_account.692159066307_compute projects/dt-sandbox-service-proj/serviceAccounts/692159066307-compute@dt-sandbox-service-proj.iam.gserviceaccount.com

resource "google_service_account" "dt_sandbox_service_proj" {
  account_id   = "dt-sandbox-service-proj"
  display_name = "App Engine default service account"
  project      = "dt-sandbox-service-proj"
}
# terraform import google_service_account.dt_sandbox_service_proj projects/dt-sandbox-service-proj/serviceAccounts/dt-sandbox-service-proj@dt-sandbox-service-proj.iam.gserviceaccount.com

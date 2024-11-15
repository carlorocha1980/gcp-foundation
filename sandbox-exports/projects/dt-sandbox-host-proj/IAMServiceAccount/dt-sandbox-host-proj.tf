resource "google_service_account" "dt_sandbox_host_proj" {
  account_id   = "dt-sandbox-host-proj"
  display_name = "App Engine default service account"
  project      = "dt-sandbox-host-proj"
}
# terraform import google_service_account.dt_sandbox_host_proj projects/dt-sandbox-host-proj/serviceAccounts/dt-sandbox-host-proj@dt-sandbox-host-proj.iam.gserviceaccount.com

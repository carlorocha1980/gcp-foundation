resource "google_service_account" "tf_sa_test" {
  account_id   = "tf-sa-test"
  display_name = "tf-sa-test"
  project      = "dt-sandbox-host-proj"
}
# terraform import google_service_account.tf_sa_test projects/dt-sandbox-host-proj/serviceAccounts/tf-sa-test@dt-sandbox-host-proj.iam.gserviceaccount.com

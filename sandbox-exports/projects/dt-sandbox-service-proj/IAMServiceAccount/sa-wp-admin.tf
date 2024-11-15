resource "google_service_account" "sa_wp_admin" {
  account_id   = "sa-wp-admin"
  description  = "Account to manage WordPress"
  display_name = "sa-wp-admin"
  project      = "dt-sandbox-service-proj"
}
# terraform import google_service_account.sa_wp_admin projects/dt-sandbox-service-proj/serviceAccounts/sa-wp-admin@dt-sandbox-service-proj.iam.gserviceaccount.com

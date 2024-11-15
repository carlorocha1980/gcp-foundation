resource "google_storage_bucket" "df_7581590977196031692_rnfjjus7fei67braaizbbqaaaa" {
  force_destroy = false

  labels = {
    cdf_instance   = "data-fusion-dev"
    ipnet_location = "us-central1"
    ipnet_name     = "df-7581590977196031692-rnfjjus7fei67braaizbbqaaaa"
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      days_since_custom_time = 20
      with_state             = "ANY"
    }
  }

  location                 = "US-CENTRAL1"
  name                     = "df-7581590977196031692-rnfjjus7fei67braaizbbqaaaa"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.df_7581590977196031692_rnfjjus7fei67braaizbbqaaaa df-7581590977196031692-rnfjjus7fei67braaizbbqaaaa

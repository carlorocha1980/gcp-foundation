resource "google_storage_bucket" "692159066307_us_central1_blueprint_config" {
  force_destroy = false

  labels = {
    ipnet_location = "us-central1"
    ipnet_name     = "692159066307-us-central1-blueprint-config"
  }

  location                 = "US-CENTRAL1"
  name                     = "692159066307-us-central1-blueprint-config"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.692159066307_us_central1_blueprint_config 692159066307-us-central1-blueprint-config

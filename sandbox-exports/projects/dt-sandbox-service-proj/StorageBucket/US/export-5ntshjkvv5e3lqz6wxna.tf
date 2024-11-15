resource "google_storage_bucket" "export_5ntshjkvv5e3lqz6wxna" {
  force_destroy = false

  labels = {
    ipnet_location = "us"
    ipnet_name     = "export-5ntshjkvv5e3lqz6wxna"
  }

  location                 = "US"
  name                     = "export-5ntshjkvv5e3lqz6wxna"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_5ntshjkvv5e3lqz6wxna export-5ntshjkvv5e3lqz6wxna

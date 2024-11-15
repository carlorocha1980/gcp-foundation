resource "google_storage_bucket" "export_lqhat4pko6glypdzvlwa" {
  force_destroy = false

  labels = {
    ipnet_location = "us"
    ipnet_name     = "export-lqhat4pko6glypdzvlwa"
  }

  location                 = "US"
  name                     = "export-lqhat4pko6glypdzvlwa"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_lqhat4pko6glypdzvlwa export-lqhat4pko6glypdzvlwa

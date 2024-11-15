resource "google_storage_bucket" "export_ijnugfcidbkghv4uprjq" {
  force_destroy = false

  labels = {
    ipnet_location = "us"
    ipnet_name     = "export-ijnugfcidbkghv4uprjq"
  }

  location                 = "US"
  name                     = "export-ijnugfcidbkghv4uprjq"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_ijnugfcidbkghv4uprjq export-ijnugfcidbkghv4uprjq

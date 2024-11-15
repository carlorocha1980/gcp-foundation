resource "google_storage_bucket" "export_lri47fon2ikjputpjjja" {
  force_destroy = false

  labels = {
    ipnet_location = "us"
    ipnet_name     = "export-lri47fon2ikjputpjjja"
  }

  location                 = "US"
  name                     = "export-lri47fon2ikjputpjjja"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "inherited"
  storage_class            = "STANDARD"
}
# terraform import google_storage_bucket.export_lri47fon2ikjputpjjja export-lri47fon2ikjputpjjja

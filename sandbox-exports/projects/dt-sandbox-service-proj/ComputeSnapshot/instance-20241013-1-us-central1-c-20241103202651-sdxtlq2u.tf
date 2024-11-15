resource "google_compute_snapshot" "instance_20241013_1_us_central1_c_20241103202651_sdxtlq2u" {
  labels = {
    ipnet_name = "instance-20241013-1-us-central1-c-20241103202651-sdxtlq2u"
  }

  name              = "instance-20241013-1-us-central1-c-20241103202651-sdxtlq2u"
  project           = "dt-sandbox-service-proj"
  source_disk       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-service-proj/zones/us-central1-c/disks/instance-20241013-193602"
  storage_locations = ["us"]
}
# terraform import google_compute_snapshot.instance_20241013_1_us_central1_c_20241103202651_sdxtlq2u projects/dt-sandbox-service-proj/global/snapshots/instance-20241013-1-us-central1-c-20241103202651-sdxtlq2u

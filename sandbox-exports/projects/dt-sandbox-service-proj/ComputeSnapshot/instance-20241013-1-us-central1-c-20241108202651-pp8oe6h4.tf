resource "google_compute_snapshot" "instance_20241013_1_us_central1_c_20241108202651_pp8oe6h4" {
  labels = {
    ipnet_name = "instance-20241013-1-us-central1-c-20241108202651-pp8oe6h4"
  }

  name              = "instance-20241013-1-us-central1-c-20241108202651-pp8oe6h4"
  project           = "dt-sandbox-service-proj"
  source_disk       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-service-proj/zones/us-central1-c/disks/instance-20241013-193602"
  storage_locations = ["us"]
}
# terraform import google_compute_snapshot.instance_20241013_1_us_central1_c_20241108202651_pp8oe6h4 projects/dt-sandbox-service-proj/global/snapshots/instance-20241013-1-us-central1-c-20241108202651-pp8oe6h4

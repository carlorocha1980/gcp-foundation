resource "google_compute_snapshot" "instance_20241013_1_us_central1_c_20241109202651_4bkt8p6z" {
  labels = {
    ipnet_name = "instance-20241013-1-us-central1-c-20241109202651-4bkt8p6z"
  }

  name              = "instance-20241013-1-us-central1-c-20241109202651-4bkt8p6z"
  project           = "dt-sandbox-service-proj"
  source_disk       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-service-proj/zones/us-central1-c/disks/instance-20241013-193602"
  storage_locations = ["us"]
}
# terraform import google_compute_snapshot.instance_20241013_1_us_central1_c_20241109202651_4bkt8p6z projects/dt-sandbox-service-proj/global/snapshots/instance-20241013-1-us-central1-c-20241109202651-4bkt8p6z

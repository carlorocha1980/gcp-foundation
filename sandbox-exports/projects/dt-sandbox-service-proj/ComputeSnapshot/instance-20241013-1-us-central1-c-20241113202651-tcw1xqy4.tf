resource "google_compute_snapshot" "instance_20241013_1_us_central1_c_20241113202651_tcw1xqy4" {
  labels = {
    ipnet_name = "instance-20241013-1-us-central1-c-20241113202651-tcw1xqy4"
  }

  name              = "instance-20241013-1-us-central1-c-20241113202651-tcw1xqy4"
  project           = "dt-sandbox-service-proj"
  source_disk       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-service-proj/zones/us-central1-c/disks/instance-20241013-193602"
  storage_locations = ["us"]
}
# terraform import google_compute_snapshot.instance_20241013_1_us_central1_c_20241113202651_tcw1xqy4 projects/dt-sandbox-service-proj/global/snapshots/instance-20241013-1-us-central1-c-20241113202651-tcw1xqy4

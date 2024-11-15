resource "google_compute_snapshot" "instance_20241013_1_us_central1_c_20241110202651_7sohgnxk" {
  labels = {
    ipnet_name = "instance-20241013-1-us-central1-c-20241110202651-7sohgnxk"
  }

  name              = "instance-20241013-1-us-central1-c-20241110202651-7sohgnxk"
  project           = "dt-sandbox-service-proj"
  source_disk       = "https://www.googleapis.com/compute/v1/projects/dt-sandbox-service-proj/zones/us-central1-c/disks/instance-20241013-193602"
  storage_locations = ["us"]
}
# terraform import google_compute_snapshot.instance_20241013_1_us_central1_c_20241110202651_7sohgnxk projects/dt-sandbox-service-proj/global/snapshots/instance-20241013-1-us-central1-c-20241110202651-7sohgnxk

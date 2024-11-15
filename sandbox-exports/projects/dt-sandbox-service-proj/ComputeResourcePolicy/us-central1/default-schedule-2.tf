resource "google_compute_resource_policy" "default_schedule_2" {
  name    = "default-schedule-2"
  project = "dt-sandbox-service-proj"
  region  = "us-central1"

  snapshot_schedule_policy {
    retention_policy {
      max_retention_days    = 14
      on_source_disk_delete = "KEEP_AUTO_SNAPSHOTS"
    }

    schedule {
      daily_schedule {
        days_in_cycle = 1
        start_time    = "19:00"
      }
    }
  }
}
# terraform import google_compute_resource_policy.default_schedule_2 projects/dt-sandbox-service-proj/regions/us-central1/resourcePolicies/default-schedule-2

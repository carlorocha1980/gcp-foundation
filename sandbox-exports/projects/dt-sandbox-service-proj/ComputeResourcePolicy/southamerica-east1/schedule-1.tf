resource "google_compute_resource_policy" "schedule_1" {
  name    = "schedule-1"
  project = "dt-sandbox-service-proj"
  region  = "southamerica-east1"

  snapshot_schedule_policy {
    retention_policy {
      max_retention_days    = 14
      on_source_disk_delete = "APPLY_RETENTION_POLICY"
    }

    schedule {
      daily_schedule {
        days_in_cycle = 1
        start_time    = "01:00"
      }
    }

    snapshot_properties {
      storage_locations = ["us"]
    }
  }
}
# terraform import google_compute_resource_policy.schedule_1 projects/dt-sandbox-service-proj/regions/southamerica-east1/resourcePolicies/schedule-1

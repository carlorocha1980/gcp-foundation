resource "google_sql_database_instance" "test_to_delete" {
  database_version    = "POSTGRES_16"
  instance_type       = "CLOUD_SQL_INSTANCE"
  maintenance_version = "POSTGRES_16_4.R20240910.01_02"
  name                = "test-to-delete"
  project             = "dt-sandbox-host-proj"
  region              = "us-central1"

  settings {
    activation_policy = "ALWAYS"
    availability_type = "ZONAL"

    backup_configuration {
      backup_retention_settings {
        retained_backups = 7
        retention_unit   = "COUNT"
      }

      enabled                        = true
      location                       = "us"
      point_in_time_recovery_enabled = true
      start_time                     = "19:00"
      transaction_log_retention_days = 7
    }

    connector_enforcement = "NOT_REQUIRED"
    disk_autoresize       = true
    disk_autoresize_limit = 0
    disk_size             = 10
    disk_type             = "PD_SSD"
    edition               = "ENTERPRISE"

    insights_config {
      query_string_length = 0
    }

    ip_configuration {
      allocated_ip_range = "dt-sandbox-service-proj-private-ip-address-dev"

      authorized_networks {
        name  = "carlokos-vpn-br"
        value = "129.148.29.13/32"
      }

      ipv4_enabled    = true
      private_network = "projects/dt-sandbox-host-proj/global/networks/dt-sandbox-service-proj-shared-vpc"
    }

    location_preference {
      zone = "us-central1-a"
    }

    maintenance_window {
      update_track = "canary"
    }

    pricing_plan = "PER_USE"
    tier         = "db-custom-2-8192"

    user_labels = {
      ipnet_name   = "test-to-delete"
      ipnet_region = "us-central1"
    }
  }
}
# terraform import google_sql_database_instance.test_to_delete projects/dt-sandbox-host-proj/instances/test-to-delete

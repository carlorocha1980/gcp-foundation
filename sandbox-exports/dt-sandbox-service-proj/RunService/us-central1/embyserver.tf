resource "google_cloud_run_v2_service" "embyserver" {
  client       = "cloud-console"
  ingress      = "INGRESS_TRAFFIC_ALL"
  launch_stage = "GA"
  location     = "us-central1"
  name         = "embyserver"
  project      = "dt-sandbox-service-proj"

  template {
    containers {
      image = "emby/embyserver:latest"
      name  = "embyserver-1"

      ports {
        container_port = 8096
        name           = "http1"
      }

      resources {
        cpu_idle = true

        limits = {
          cpu    = "1000m"
          memory = "512Mi"
        }

        startup_cpu_boost = true
      }

      startup_probe {
        failure_threshold     = 1
        initial_delay_seconds = 0
        period_seconds        = 240

        tcp_socket {
          port = 8096
        }

        timeout_seconds = 240
      }
    }

    max_instance_request_concurrency = 80

    scaling {
      max_instance_count = 10
    }

    service_account  = "692159066307-compute@developer.gserviceaccount.com"
    session_affinity = true
    timeout          = "300s"

    volumes {
      name = "gcs-1"
    }
  }

  traffic {
    percent = 100
    type    = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
  }
}
# terraform import google_cloud_run_v2_service.embyserver projects/dt-sandbox-service-proj/locations/us-central1/services/embyserver

resource "google_storage_bucket" "dt_sandbox_service_proj_vm_images" {
  autoclass {
    enabled = true
  }

  force_destroy = false

  labels = {
    goog-terraform-provisioned = "true"
    ipnet_location             = "us-central1"
    ipnet_name                 = "dt-sandbox-service-proj-vm-images"
    type                       = "vm-images"
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      num_newer_versions = 3
      with_state         = "ARCHIVED"
    }
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }

    condition {
      days_since_noncurrent_time = 7
      with_state                 = "ANY"
    }
  }

  location                 = "US-CENTRAL1"
  name                     = "dt-sandbox-service-proj-vm-images"
  project                  = "dt-sandbox-service-proj"
  public_access_prevention = "enforced"
  storage_class            = "STANDARD"

  versioning {
    enabled = true
  }
}
# terraform import google_storage_bucket.dt_sandbox_service_proj_vm_images dt-sandbox-service-proj-vm-images

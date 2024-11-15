resource "google_container_node_pool" "pool_2" {
  autoscaling {
    location_policy = "ANY"
    max_node_count  = 3
  }

  cluster            = "avantia-private-cluster-dev"
  initial_node_count = 1
  location           = "us-central1"

  management {
    auto_repair  = true
    auto_upgrade = true
  }

  max_pods_per_node = 55
  name              = "pool-2"

  network_config {
    enable_private_nodes = true
    pod_ipv4_cidr_block  = "10.242.32.0/19"
    pod_range            = "wecloud-box-pods-range"
  }

  node_config {
    advanced_machine_features {
      threads_per_core = 0
    }

    disk_size_gb    = 30
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "e2-micro"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }

    spot = true

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_count     = 0
  node_locations = ["us-central1-a", "us-central1-c", "us-central1-f"]
  project        = "dt-sandbox-service-proj"

  upgrade_settings {
    max_surge = 1
    strategy  = "SURGE"
  }

  version = "1.30.5-gke.1443001"
}
# terraform import google_container_node_pool.pool_2 dt-sandbox-service-proj/us-central1/avantia-private-cluster-dev/pool-2

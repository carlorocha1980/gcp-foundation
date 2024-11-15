resource "google_container_cluster" "avantia_private_cluster_dev" {
  addons_config {
    gce_persistent_disk_csi_driver_config {
      enabled = true
    }

    network_policy_config {
      disabled = true
    }
  }

  cluster_autoscaling {
    autoscaling_profile = "BALANCED"
  }

  cluster_ipv4_cidr = "10.242.8.0/21"

  cluster_telemetry {
    type = "ENABLED"
  }

  database_encryption {
    state = "DECRYPTED"
  }

  default_max_pods_per_node = 110

  default_snat_status {
    disabled = false
  }

  enable_l4_ilb_subsetting = true
  enable_shielded_nodes    = true
  initial_node_count       = 1

  ip_allocation_policy {
    cluster_ipv4_cidr_block      = "10.242.8.0/21"
    cluster_secondary_range_name = "services-range"

    pod_cidr_overprovision_config {
      disabled = false
    }

    services_ipv4_cidr_block      = "10.242.4.0/22"
    services_secondary_range_name = "pods-range"
    stack_type                    = "IPV4"
  }

  location = "us-central1"

  logging_config {
    enable_components = ["SYSTEM_COMPONENTS", "WORKLOADS"]
  }

  master_auth {
    client_certificate_config {
      issue_client_certificate = false
    }
  }

  master_authorized_networks_config {
    cidr_blocks {
      cidr_block   = "10.242.0.0/17"
      display_name = "subnet_gke_avanuv_pri_name"
    }
  }

  monitoring_config {
    advanced_datapath_observability_config {
      enable_metrics = false
    }

    enable_components = ["SYSTEM_COMPONENTS", "HPA", "POD", "DAEMONSET", "DEPLOYMENT", "STATEFULSET", "STORAGE", "KUBELET", "CADVISOR"]

    managed_prometheus {
      enabled = true
    }
  }

  name    = "avantia-private-cluster-dev"
  network = "projects/dt-sandbox-host-proj/global/networks/infra-dev"

  network_policy {
    enabled  = false
    provider = "PROVIDER_UNSPECIFIED"
  }

  networking_mode = "VPC_NATIVE"

  node_config {
    disk_size_gb    = 100
    disk_type       = "pd-balanced"
    image_type      = "COS_CONTAINERD"
    logging_variant = "DEFAULT"
    machine_type    = "n1-standard-2"

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes    = ["https://www.googleapis.com/auth/devstorage.read_only", "https://www.googleapis.com/auth/logging.write", "https://www.googleapis.com/auth/monitoring", "https://www.googleapis.com/auth/service.management.readonly", "https://www.googleapis.com/auth/servicecontrol", "https://www.googleapis.com/auth/trace.append"]
    service_account = "default"

    shielded_instance_config {
      enable_integrity_monitoring = true
    }

    tags = ["gke"]

    workload_metadata_config {
      mode          = "GKE_METADATA"
      node_metadata = "GKE_METADATA_SERVER"
    }
  }

  node_locations = ["us-central1-a", "us-central1-c", "us-central1-f"]

  node_pool_defaults {
    node_config_defaults {
      logging_variant = "DEFAULT"
    }
  }

  node_version = "1.30.5-gke.1443001"

  notification_config {
    pubsub {
      enabled = false
    }
  }

  pod_security_policy_config {
    enabled = false
  }

  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true

    master_global_access_config {
      enabled = false
    }

    master_ipv4_cidr_block = "10.242.83.0/28"
  }

  project = "dt-sandbox-service-proj"

  protect_config {
    workload_config {
      audit_mode = "BASIC"
    }

    workload_vulnerability_mode = "WORKLOAD_VULNERABILITY_MODE_UNSPECIFIED"
  }

  release_channel {
    channel = "REGULAR"
  }

  security_posture_config {
    mode               = "BASIC"
    vulnerability_mode = "VULNERABILITY_MODE_UNSPECIFIED"
  }

  service_external_ips_config {
    enabled = false
  }

  subnetwork = "projects/dt-sandbox-host-proj/regions/us-central1/subnetworks/avantia-infr-prod-gke-wecloud-cluster-pri-us-ce1-a-1"

  workload_identity_config {
    workload_pool = "dt-sandbox-service-proj.svc.id.goog"
  }
}
# terraform import google_container_cluster.avantia_private_cluster_dev dt-sandbox-service-proj/us-central1/avantia-private-cluster-dev

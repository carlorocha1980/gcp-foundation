# ##################################
# # Create a GKE AutoPilot Cluster #
# ##################################
# resource "google_container_cluster" "gke_cluster" {
#     name = "${var.service_project_id}-gke-cluster-${var.env}"
#     project = var.service_project_id

#     location = var.region_id # Choose region for Regional GKE cluster, or zone for Zonal GKE cluster
#     enable_autopilot         = true
#     enable_l4_ilb_subsetting = true

#     network    = local.networks.vpc_shared_network.id
#     subnetwork = local.networks.gke_subnet_services.id

#     ip_allocation_policy {
#         stack_type                    = "IPV4"
#         services_secondary_range_name = local.networks.gke_subnet_services.secondary_ip_range.services_range_name
#         cluster_secondary_range_name  = local.networks.gke_subnet_services.secondary_ip_range.pod_range_name
#     }

#     # Set `deletion_protection` to `true` will ensure that one cannot
#     # accidentally delete this instance by use of Terraform.
#     deletion_protection = false

#     depends_on = [ 
#         google_project_iam_member.host-proj-security-admin,
#         google_project_iam_member.host-proj-network-user,
#         google_project_iam_member.host-proj-k8s-agent-user,
#         google_project_iam_member.host-proj-k8s-agent,
#         google_project_iam_member.service-proj-k8s-agent
#                  ]
# }

resource "google_container_cluster" "avantia_pri_dev_gke" {
  name = "avantia-private-cluster-${var.env}"
  project = local.projects.service_project.name

  network    = google_compute_network.vpc_network_avantia_dev.self_link
  subnetwork = google_compute_subnetwork.subnet_avantia_weava_pri.self_link

  location = var.region_id
  enable_l4_ilb_subsetting = true
  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-2"
    tags = ["gke"]
      }


  private_cluster_config {
        enable_private_endpoint = true
        enable_private_nodes    = true
        master_ipv4_cidr_block  = var.subnet_control_range
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = google_compute_subnetwork.subnet_avantia_weava_pri.secondary_ip_range[0].range_name
    cluster_secondary_range_name    = google_compute_subnetwork.subnet_avantia_weava_pri.secondary_ip_range[1].range_name
    # cluster_secondary_range_name    = google_compute_subnetwork.subnet_avantia_weava_pri.secondary_ip_range[2].range_name
  }

  workload_identity_config {
    workload_pool = "${local.projects.service_project.name}.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.subnet_cidr_environment
      display_name = "subnet_gke_avanuv_pri_name"
    }
  }

  release_channel {
  channel = "REGULAR"
}

deletion_protection = false

depends_on = [ 
    google_project_iam_member.host-proj-k8s-agent,
    google_project_iam_member.host-proj-k8s-agent-user,
    google_project_iam_member.host-proj-network-user,
    google_project_iam_member.host-proj-security-admin,
    google_project_iam_member.service-proj-k8s-agent
    ]

}
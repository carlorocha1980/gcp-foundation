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
  project = local.avantia_service_project.service_project_name

  network    = local.lab_shared_vpc.avantia_vpc_id
  subnetwork = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name

  location = var.zone_01_id
  enable_l4_ilb_subsetting = true
  initial_node_count = 1

  node_config {
    machine_type = "n1-standard-2"
    tags = ["gke"]
      }


  private_cluster_config {
        enable_private_endpoint = true
        enable_private_nodes    = true
        master_ipv4_cidr_block  = var.subnet_cidr_cluster_range_control
    } 

  ip_allocation_policy {
    stack_type = "IPV4"
    services_secondary_range_name   = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name_services_range
    cluster_secondary_range_name    = local.dev_gke_subnets_us_central1-a.subnet_gke_avanuv_pri_name_pod_range
  }

  workload_identity_config {
    workload_pool = "${local.avantia_service_project.service_project_name}.svc.id.goog"
  }

    master_authorized_networks_config {
    cidr_blocks {
      cidr_block    = var.cidr_block
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
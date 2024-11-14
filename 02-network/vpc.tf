# ################################
# # Create a AiQFome VPC Network #
# ################################
# # Create a google vpc network
# resource "google_compute_network" "vpc_shared_network" {
#     name                    = "${var.service_project_id}-shared-vpc"
#     project                 = local.projects.host_project.name
#   # ipv4_range              = "10.65.0.0/16"
#     auto_create_subnetworks = false
# }

# output "vpc_shared_network" {
#     value = "${google_compute_network.vpc_shared_network.self_link}"
# }
# output "vpc_shared_network_name" {
#     value = "${google_compute_network.vpc_shared_network.name}"
# }

# # ########################################################
# # # Create a Output Files to reuse generated information #
# # ########################################################
# # resource "local_file" "export_network" {
# #     content = jsonencode({
# #         aiqfome_vpc_self_link = google_compute_network.vpc_network_aiqfome_dev.self_link
# #         aiqentrega_vpc_self_link = google_compute_network.vpc_network_aiqentrega_dev.self_link
# #         plusdelivery_vpc_self_link = google_compute_network.vpc_network_plusdelivery_dev.self_link
# #     })
# #     filename = "../local/shared_vpcs.json"
# # }


# Create the production google vpc network
resource "google_compute_network" "vpc_network_avantia_prd" {
  name    = "infra-${var.prd_env}"
  project = var.host_project_id
  auto_create_subnetworks = false

  routing_mode = "GLOBAL"
}

output "avantia-prd-vpc-network" {
  value = google_compute_network.vpc_network_avantia_prd.self_link
}

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "prd_export_network" {
  content = jsonencode({
    avantia_prd_vpc_self_link = google_compute_network.vpc_network_avantia_prd.self_link
    avantia_prd_vpc_id        = google_compute_network.vpc_network_avantia_prd.id
  })
  filename = "../../local/prod_shared_vpc.json"
  
}

#################################
# Create Avantia's VPC Networks #
#################################
# Create a google vpc network
resource "google_compute_network" "vpc_network_avantia_dev" {
  name    = "infra-${var.env}"
  project = var.host_project_id
  auto_create_subnetworks = false

  routing_mode = "GLOBAL"
}

output "avantia-vpc-network" {
  value = google_compute_network.vpc_network_avantia_dev.self_link
}

########################################################
# Create a Output Files to reuse generated information #
########################################################
resource "local_file" "prd_export_network_dev" {
  content = jsonencode({
    avantia_vpc_self_link = google_compute_network.vpc_network_avantia_dev.self_link
    avantia_vpc_id        = google_compute_network.vpc_network_avantia_dev.id
  })
  filename = "../../local/lab_shared_vpc.json"
}
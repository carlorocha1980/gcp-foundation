resource "google_project" "dt_sandbox_host_proj" {
  auto_create_network = true
  billing_account     = "01529A-1DB5F6-92DF9C"
  folder_id           = "825405594628"
  name                = "dt-sandbox-host-proj"
  project_id          = "dt-sandbox-host-proj"
}
# terraform import google_project.dt_sandbox_host_proj projects/dt-sandbox-host-proj

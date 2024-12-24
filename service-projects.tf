module "cs-svc-prod1-svc-j8yh" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 16.0"

  name            = "prod1-service"
  project_id      = "prod1-svc-j8yh"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Production"].id

  #shared_vpc = module.cs-project-vpc-host-prod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-prod1-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]

  activate_apis = [
    "aiplatform.googleapis.com"  # Enable Vertex AI API
  ]
}

module "cs-svc-nonprod1-svc-j8yh" {
  source  = "terraform-google-modules/project-factory/google//modules/svpc_service_project"
  version = "~> 16.0"

  name            = "nonprod1-service"
  project_id      = "nonprod1-svc-j8yh"
  org_id          = var.org_id
  billing_account = var.billing_account
  folder_id       = local.folder_map["Non-Production"].id

  # shared_vpc = module.cs-project-vpc-host-nonprod.project_id

  domain     = data.google_organization.org.domain
  group_name = module.cs-gg-nonprod1-service.name
  group_role = "roles/viewer"
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]

  activate_apis = [
    "compute.googleapis.com"  # Enable Compute Engine API for VMs
  ]
}

# module "cs-project-vpc-host-prod" {
#   source  = "terraform-google-modules/project-factory/google"
#   version = "~> 16.0"

#   name       = "vpc-host-prod"
#   project_id = "vpc-host-prod-vu514-oa749"
#   org_id     = var.org_id
#   folder_id  = local.folder_map["Common"].id

#   billing_account                = var.billing_account
#   enable_shared_vpc_host_project = true
#   depends_on = [
#     module.cs-org-policy-compute_skipDefaultNetworkCreation,
#   ]
# }

# module "cs-project-vpc-host-nonprod" {
#   source  = "terraform-google-modules/project-factory/google"
#   version = "~> 16.0"

#   name       = "vpc-host-nonprod"
#   project_id = "vpc-host-nonprod-mz360-wq361"
#   org_id     = var.org_id
#   folder_id  = local.folder_map["Common"].id

#   billing_account                = var.billing_account
#   enable_shared_vpc_host_project = true
#   depends_on = [
#     module.cs-org-policy-compute_skipDefaultNetworkCreation,
#   ]
# }

module "cs-project-logging-monitoring" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 16.0"

  name       = "central-logging-monitoring"
  project_id = "central-log-monitor-oc934-zo24"
  org_id     = var.org_id
  folder_id  = local.folder_map["Common"].id

  billing_account = var.billing_account
  depends_on = [
    module.cs-org-policy-compute_skipDefaultNetworkCreation,
  ]
  activate_apis = [
    "compute.googleapis.com",
    "monitoring.googleapis.com",
  ]
}

variable "billing_account" {
  description = "The ID of the billing account to associate projects with"
  type        = string
  default     = "0130EF-DCDE1F-A055A5"
}

variable "org_id" {
  description = "The organization id for the associated resources"
  type        = string
  default     = "686904727198"
}

variable "billing_project" {
  description = "The project id to use for billing"
  type        = string
  default     = "cs-host-e31612f44556448e90dd2e"
}

variable "folders" {
  description = "Folder structure as a map"
  type        = map
}

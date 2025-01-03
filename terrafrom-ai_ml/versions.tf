terraform {
  required_version = ">= 1.3"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.22"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 5.22"
    }
  }
  provider_meta "google" {
    module_name = "blueprints/terraform/fs-exported-7a1938872c03d0da/v0.1.0"
  }
  provider_meta "google-beta" {
    module_name = "blueprints/terraform/fs-exported-7a1938872c03d0da/v0.1.0"
  }
}

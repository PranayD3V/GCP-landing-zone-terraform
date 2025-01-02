terraform {
  backend "gcs" {
    bucket = "cs-tfstate-us-central1-d33e0d11d6bc4a58b1b179d8b6619ff7"
    prefix = "terraform"
  }
}

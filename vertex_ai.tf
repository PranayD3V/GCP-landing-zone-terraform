resource "google_vertex_ai_dataset" "dataset" {
  display_name          = "terraform"
  metadata_schema_uri   = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"
  region                = "us-central1"
  project = module.cs-svc-nonprod1-svc-j8yh.project_id
}
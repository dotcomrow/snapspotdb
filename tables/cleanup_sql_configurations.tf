resource "google_bigquery_table" "cleanup_sql_configurations" {
  dataset_id          = var.dataset_id
  table_id            = "cleanup_sql_configurations"
  deletion_protection = false
  project             = var.project_id
  schema              = <<EOF
[
  {
    "mode": "REQUIRED",
    "name": "table_name",
    "type": "STRING"
  },
  {
    "name": "type",
    "mode": "REQUIRED",
    "type": "STRING"
  },
  {
    "name": "namespace",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "cleanup_sql",
    "type": "STRING",
    "mode": "REQUIRED"
  }
]
EOF
}

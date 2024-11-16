resource "cloudflare_r2_bucket" "cloudflare-bucket" {
  account_id = var.cloudflare_account_id
  name       = "${var.bucket_name}-${var.project_name}-${var.DATASET_ENV}"
}

resource "cloudflare_d1_database" "pulse_ui_cache" {
  account_id = var.cloudflare_account_id
  name       = "snapspot_${var.DATASET_ENV}_cache"
}
resource "google_spanner_database" "database" {
  instance = "appdb"
  name     = var.db_name
  ddl = [
    "CREATE TABLE tasks ( id STRING(36) DEFAULT (GENERATE_UUID()), title STRING(300), status STRING(15), ) PRIMARY KEY (id)",
  ]
  deletion_protection = false
}

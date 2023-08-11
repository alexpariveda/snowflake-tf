terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.68"
    }
  }
}

provider "snowflake" {
  role = "MAIN-TF"
}

resource "snowflake_database" "db" {
  name = "TF_DEMO_ALEX"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO_ALEX"
  warehouse_size = "large"
  auto_suspend   = 60
}
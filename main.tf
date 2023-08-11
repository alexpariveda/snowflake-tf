terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.68"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
  region   = "south-central-us.azure" # much needed
}

resource "snowflake_database" "db" {
  name = "TF_DEMO_ALEX"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO_ALEX"
  warehouse_size = "large"
  auto_suspend   = 60
}
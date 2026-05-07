terraform {
  required_providers {
    genesyscloud = {
      source  = "MyPureCloud/genesyscloud"
      version = "~> 1.0"
    }
  }
}

provider "genesyscloud" {
  # Authentication is handled via Environment Variables set in Terraform Cloud:
  # GENESYSCLOUD_OAUTHCLIENT_ID
  # GENESYSCLOUD_OAUTHCLIENT_SECRET
  # GENESYSCLOUD_REGION
}

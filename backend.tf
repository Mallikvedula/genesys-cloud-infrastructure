terraform {
  cloud {
    organization = "YOUR_TERRAFORM_CLOUD_ORG_NAME"

    workspaces {
      # This allows execution via CLI using prefix, but typically you link this via VCS in TFC UI.
      tags = ["genesys-cloud"]
    }
  }
}

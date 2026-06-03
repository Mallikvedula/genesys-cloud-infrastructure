terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "cg_genesys"

    workspaces {
      name = "genesys-dev"
    }
  }
}

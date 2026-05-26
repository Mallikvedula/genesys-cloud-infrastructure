resource "genesyscloud_auth_division" "sales_division" {
  name        = "Sales-Division"
  description = "Sales Division for operations related to sales and customer acquisition"
}


#using existing divisin below for testing purpose, will remove later
 data "genesyscloud_auth_division" "home_ind" {
  name = "Home, ind"
 }
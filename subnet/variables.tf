data "terraform_remote_state" "subnet" {
  backend = "local"

  config = {
    path = "../../../generated/azurerm/subnet/terraform.tfstate"
  }
}

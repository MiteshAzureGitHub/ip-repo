terraform {
  backend "azurerm" {
    storage_account_name = "miteshstorage29011"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
    access_key = "mS8OBr0jO4pN49DW2J7+nANSKXqUe6BrxUXc2WBu5YtlSAjpAX5T6Yma65eeMeEJR/r0jCbKLmuV+ASt/MrjvQ=="
  }
}

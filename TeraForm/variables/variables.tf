# variables.tf
variable "location" {
  description = "Azure region for resource deployment"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "myResourceGroup"
}

variable "tags" {
  description = "Common tags to apply to resources"
  type        = map(string)
  default = {
    environment = "production"
    owner       = "admin"
  }
}

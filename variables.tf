variable "rg_name" {
  description = "rg name"
  type = string
  default = "service_plan"
}
variable "rg_location" {
  description = "rg location"
  type = string
  default = "west europe"
}
variable "app_servicename" {
  description = "Azure app service name"
  default = "TerraformAppServiceplan"
  type = string
}
variable "app_servicewebapp" {
  description = "Azure app service name"
  default = "TerraformAppServiceWebApp"
  type = string
}

output "resource_group_name" {
  value = azurerm_resource_group.service.name
}
output "app_service_plan" {
  value = azurerm_app_service_plan.service.name
}
output "Webappname" {
  value = azurerm_app_service.linuxwebapp.name
}

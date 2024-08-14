locals {
  ollama_fqdn = "http://${local.ollama_service_name}.${var.location}.cloudapp.azure.com:${var.ollama_port}"
}

output "ollama_fqdn" {
  description = "The fully qualified domain name (FQDN) of the Ollama service."
  value       = local.ollama_fqdn
}

output "resource_group_name" {
  description = "The name of the resource group."
  value       = local.resource_group_name
}

output "aks_name" {
  description = "The name of the Azure Kubernetes Service (AKS)."
  value       = local.aks_name
}

output "_NEXT_STEPS_" {
  description = "Description of what to do next."
  value       = "Please wait a few minutes for the models deployed into the Ollama service to be downloaded and initializated. Then, you can access the Ollama service, for example using `curl` like this: `curl ${local.ollama_fqdn}/api/generate -d '{ \"model\": \"${var.ollama_model_name}\", \"prompt\": \"Why is the sky blue?\", \"stream\": false }'`."
}

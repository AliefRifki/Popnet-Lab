variable "location" {
  type        = string
  default     = "East Asia"
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "acr_name" {
  type        = string
  description = "Azure Container Registry name (must be globally unique)"
}

variable "aks_name" {
  type        = string
  description = "Azure Kubernetes Service name"
}

variable "agent_count" {
  type        = number
  default     = 2
  description = "Node count for AKS pool"
}

variable "agent_vm_size" {
  type        = string
  default     = "Standard_B4ms"
  description = "VM size for AKS nodes"
}